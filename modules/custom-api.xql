xquery version "3.1";

(:~
 : This is the place to import your own XQuery modules for either:
 :
 : 1. custom API request handling functions
 : 2. custom templating functions to be called from one of the HTML templates
 :)
module namespace api="http://teipublisher.com/api/custom";
declare namespace tei="http://www.tei-c.org/ns/1.0";

import module namespace config="http://www.tei-c.org/tei-simple/config" at "config.xqm";


(: Add your own module imports here :)
import module namespace rutil="http://exist-db.org/xquery/router/util";
import module namespace app="teipublisher.com/app" at "app.xql";


declare function api:witness-view($doc, $data) {
    for $data in config:get-document($doc)
    let $N3761 := //*[contains(@wit, 'N3761')]   
    return
        if (exists($N3761))  then
                <template title="New York, JTS 3761">
                    <pb-view src="document1" class="transcription" xpath="//div[@type='letter']" subscribe="transcription" emit="transcription">
                    <pb-param name="view" value="N3761"/>
                    </pb-view>
                </template>
        else
            ()
};

declare function api:people($request as map(*)) {
    let $search := normalize-space($request?parameters?search)
    let $letterParam := $request?parameters?category
    let $view := $request?parameters?view
    let $sortDir := $request?parameters?dir
    let $limit := $request?parameters?limit
    let $people :=
        if ($view = "correspondents") then
            if ($search and $search != '') then
                doc($config:data-root || "/people.xml")//tei:listPerson/tei:person[ft:query(., 'name:(' || $search || '*)')][@type="correspondent"]
            else
                doc($config:data-root || "/people.xml")//tei:listPerson/tei:person[@type="correspondent"]
        else
            if ($search and $search != '') then
                doc($config:data-root || "/people.xml")//tei:listPerson/tei:person[ft:query(., 'name:(' || $search || '*)')]
            else
                doc($config:data-root || "/people.xml")//tei:listPerson/tei:person
    let $byKey := for-each($people, function($person as element()) {
        let $name := $person/tei:persName[1]
        let $label :=
            if ($name/tei:surname) then
                string-join(($name/tei:surname, $name/tei:forename), ", ")
            else
                $name/text()
        let $sortKey :=
            if (starts-with($label, "by ")) then
                substring($label, 5)
            else
                $label
        return
            [lower-case($sortKey), $label, $person]
    })
    let $sorted := api:sort($byKey, $sortDir)
    let $letter := 
        if (count($people) < $limit) then 
            "All"
        else if ($letterParam = '') then
            substring($sorted[1]?1, 1, 1) => upper-case()
        else
            $letterParam
    let $byLetter :=
        if ($letter = 'All') then
            $sorted
        else
            filter($sorted, function($entry) {
                starts-with($entry?1, lower-case($letter))
            })
    return
        map {
            "items": api:output-person($byLetter, $letter, $view, $search),
            "categories":
                if (count($people) < $limit) then
                    []
                else array {
                    for $index in 1 to string-length('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
                    let $alpha := substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', $index, 1)
                    let $hits := count(filter($sorted, function($entry) { starts-with($entry?1, lower-case($alpha))}))
                    where $hits > 0
                    return
                        map {
                            "category": $alpha,
                            "count": $hits
                        },
                    map {
                        "category": "All",
                        "count": count($sorted)
                    }
                }
        }
};

declare function api:sort($people as array(*)*, $dir as xs:string) {
    let $sorted :=
        sort($people, "?lang=de-DE", function($entry) {
            $entry?1
        })
    return
        if ($dir = "asc") then
            $sorted
        else
            reverse($sorted)
};

declare function api:output-person($list, $letter as xs:string, $view as xs:string, $search as xs:string?) {
    array {
        for $person in $list
        let $dates := string-join(($person?3/tei:birth/tei:date, $person?3/tei:death/tei:date), "–")
        let $letterParam := if ($letter = "All") then substring($person?3/@n, 1, 1) else $letter
        let $params := "category=" || $letterParam || "&amp;view=" || $view || "&amp;search=" || $search
        (:Link to Facet in Letter Index: <a href="../../zacutos-letters/index.html?collection=letters&amp;facet-correspondent={$person?3/@n}">{$person?2}</a>:)
        return
            <span>
                <a href="../../zacutos-letters/persons/{$person?3/@xml:id}.xml">{$person?2}</a>
                { if ($dates) then <span class="dates"> ({$dates})</span> else () }
            </span>
    }
};

declare function api:places-all($request as map(*)) {
    let $places := doc($config:data-root || "/places.xml")//tei:listPlace/tei:place
    return 
        array { 
            for $place in $places
                let $tokenized := tokenize($place/tei:location/tei:geo)
                return 
                    map {
                        "latitude":$tokenized[1],
                        "longitude":$tokenized[2],
                        "label":$place/@n/string()
                    }
            }        
};


declare function api:places($request as map(*)) {
    let $search := normalize-space($request?parameters?search)
    let $letterParam := $request?parameters?category
    let $limit := $request?parameters?limit
    let $places :=
        if ($search and $search != '') then
            doc($config:data-root || "/places.xml")//tei:listPlace/tei:place[matches(@n, "^" || $search, "i")]
        else
            doc($config:data-root || "/places.xml")//tei:listPlace/tei:place
    let $sorted := sort($places, "?lang=de-DE", function($place) { lower-case($place/@n) })
    let $letter := 
        if (count($places) < $limit) then 
            "All"
        else if ($letterParam = '') then
            substring($sorted[1], 1, 1) => upper-case()
        else
            $letterParam
    let $byLetter :=
        if ($letter = 'All') then
            $sorted
        else
            filter($sorted, function($entry) {
                starts-with(lower-case($entry/@n), lower-case($letter))
            })
    return
        map {
            "items": api:output-place($byLetter, $letter, $search),
            "categories":
                if (count($places) < $limit) then
                    []
                else array {
                    for $index in 1 to string-length('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
                    let $alpha := substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', $index, 1)
                    let $hits := count(filter($sorted, function($entry) { starts-with(lower-case($entry/@n), lower-case($alpha))}))
                    where $hits > 0
                    return
                        map {
                            "category": $alpha,
                            "count": $hits
                        },
                    map {
                        "category": "All",
                        "count": count($sorted)
                    }
                }
        }
};


(: <a href="{$label}?{$params}">{$label}</a> :)
    declare function api:output-place($list, $category as xs:string, $search as xs:string?) {
    array {
        for $place in $list
        let $categoryParam := if ($category = "all") then substring($place/@n, 1, 1) else $category
        let $params := "category=" || $categoryParam || "&amp;search=" || $search
        let $label := $place/@n/string()
        let $coords := tokenize($place/tei:location/tei:geo)
        return
            <span class="place">
                <a href="../../zacutos-letters/index.html?collection=letters&amp;facet-place={$label}">{$label}</a>
                <pb-geolocation latitude="{$coords[1]}" longitude="{$coords[2]}" label="{$label}" emit="map" event="click">
                    <iron-icon icon="maps:map"></iron-icon>
                </pb-geolocation>
            </span>
    }
};

(:~
 : Keep this. This function does the actual lookup in the imported modules.
 :)
declare function api:lookup($name as xs:string, $arity as xs:integer) {
    try {
        function-lookup(xs:QName($name), $arity)
    } catch * {
        ()
    }
};