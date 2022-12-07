xquery version "3.1";

(:~
 : This is the place to import your own XQuery modules for either:
 :
 : 1. custom API request handling functions
 : 2. custom templating functions to be called from one of the HTML templates
 :)
module namespace api="http://teipublisher.com/api/custom";

(: Add your own module imports here :)
import module namespace rutil="http://exist-db.org/xquery/router/util";
import module namespace app="teipublisher.com/app" at "app.xql";
(:~
 : Neuer Teil
 :)
import module namespace session="http://exist-db.org/xquery/session";
import module namespace templates="http://exist-db.org/xquery/templates" at "templates.xql";
import module namespace pages="http://www.tei-c.org/tei-simple/pages" at "lib/pages.xql";
import module namespace config="http://www.tei-c.org/tei-simple/config" at "config.xqm";

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
(:~
 : Neuer Teil

declare function api:indexdata($request as map(*)) {
let $doc := xmldb:decode-uri($request?parameters?id)
let $view := head(($request?parameters?view, $config:default-view))
let $xml := pages:load-xml($view, (), $doc)
let $template := doc($config:app-root || "/templates/facets.html")
let $model := map { 
"data": $xml?data,
"template": "facets.html",
"odd": $xml?config?odd
}
return
templates:apply($template, api:lookup#2, $model, map {
$templates:CONFIG_APP_ROOT : $config:app-root,
$templates:CONFIG_STOP_ON_ERROR : true()
})
};

declare function api:list-persons($node as node(), $model as map(*)) {
    let $persons :=
        root($model?data)//tei:persName/@ref |
        root($model?data)//@scribe[starts-with(., 'per')]
    where exists($persons)
    return map {
        "items":
            for $person in api:api-lookup($app:PERSONS, api:api-keys($persons), "ids_search")?*
            order by $person?name
            return
                <li data-ref="{$person?id}">
                    <paper-checkbox class="select-facet" title="i18n(highlight-facet)"></paper-checkbox>
                    <div>
                        <a target="_new"
                            href="https://www.ssrq-sds-fds.ch/persons-db-edit/?query={$person?id}">
                            {$person?name}
                        </a>
                        {
                            if ($person?dates) then
                                <span class="info"> ({$person?dates})</span>
                            else
                                ()
                        }
                    </div>
                </li>
    }
};

declare function api:api-lookup($api as xs:string, $list as map(*)*, $param as xs:string) {
    let $lang := (session:get-attribute("ssrq.lang"), "de")[1]
    let $iso-639-3 :=
    map {
        'de'     : 'deu',
        'fr'     : 'fra',
        'it'     : 'ita',
        'en'     : 'eng'
    }
    let $refs := string-join(for $item in $list return $item?ref, ",")
    let $request := <http:request method="GET" href="{$api}?{$param}={$refs}&amp;lang={$iso-639-3($lang)}"/>
    let $response := http:send-request($request)
    return
        if ($response[1]/@status = "200") then
            let $json := parse-json(util:binary-to-string($response[2]))
            return
                $json?info
        else
            ()
};

declare function api:api-keys($refs as xs:string*) {
    for $id in $refs
    group by $ref := substring($id, 1, 9)
    (: group by $ref := replace($id, "^([^\.]+).*$", "$1") :)
    return
        map {
            "ref": $ref,
            "name": $id[1]
        }
};
 :)