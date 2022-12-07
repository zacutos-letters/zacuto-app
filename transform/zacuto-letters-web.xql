(:~

    Transformation module generated from TEI ODD extensions for processing models.
    ODD: /db/apps/zacutos-letters/resources/odd/zacuto-letters.odd
 :)
xquery version "3.1";

module namespace model="http://www.tei-c.org/pm/models/zacuto-letters/web";

declare default element namespace "http://www.tei-c.org/ns/1.0";

declare namespace xhtml='http://www.w3.org/1999/xhtml';

declare namespace xi='http://www.w3.org/2001/XInclude';

declare namespace pb='http://teipublisher.com/1.0';

import module namespace css="http://www.tei-c.org/tei-simple/xquery/css";

import module namespace html="http://www.tei-c.org/tei-simple/xquery/functions";

(: generated template function for element spec: TEI :)
declare %private function model:template-TEI($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-clipboard label="Click the symbol to copy the citation">de Molière, Maximilian (Ed.),  Digital Corpus of Moses Zacuto's Correspondence. <a href="{$config?apply-children($config, $node, $params?uri)}/letters/{$config?apply-children($config, $node, $params?id)}">{$config?apply-children($config, $node, $params?uri)}/letters/{$config?apply-children($config, $node, $params?id)}</a></pb-clipboard></t>/*
};
(: generated template function for element spec: text :)
declare %private function model:template-text($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><template title="New York, JTS 3761">
                                            <pb-view src="document1" class="transcription" xpath="//div[@type='letter']" subscribe="transcription" emit="transcription">
                                                <pb-param name="view" value="N3761"/>
                                            </pb-view>
                                            </template></t>/*
};
(: generated template function for element spec: bibl :)
declare %private function model:template-bibl2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">{$config?apply-children($config, $node, $params?content)}</a></t>/*
};
(: generated template function for element spec: cit :)
declare %private function model:template-cit2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-link id="{$config?apply-children($config, $node, $params?alternate)}" path="{$config?apply-children($config, $node, $params?path)}" xml-id="{$config?apply-children($config, $node, $params?xid)}" odd="{$config?apply-children($config, $node, $params?odd)}" subscribe="quote" emit="quote">{$config?apply-children($config, $node, $params?content)}</pb-link><pb-popover theme="material" placement="bottom" for="{$config?apply-children($config, $node, $params?alternate)}">{$config?apply-children($config, $node, $params?alternate)}</pb-popover></t>/*
};
(: generated template function for element spec: app :)
declare %private function model:template-app3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-highlight key="{$config?apply-children($config, $node, $params?key)}" highlight-self="highlight-self">{$config?apply-children($config, $node, $params?content)}</pb-highlight></t>/*
};
(: generated template function for element spec: app :)
declare %private function model:template-app4($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-highlight key="{$config?apply-children($config, $node, $params?key)}" highlight-self="highlight-self">{$config?apply-children($config, $node, $params?content)}</pb-highlight></t>/*
};
(: generated template function for element spec: birth :)
declare %private function model:template-birth($config as map(*), $node as node()*, $params as map(*)) {
    ``[Birth: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: death :)
declare %private function model:template-death($config as map(*), $node as node()*, $params as map(*)) {
    ``[Death: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" target="_blank">ISNI</a><paper-icon-button icon="icons:link"/></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" target="_blank">GND</a><paper-icon-button icon="icons:link"/></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno4($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" target="_blank">Jewish Encyclopedia</a><paper-icon-button icon="icons:link"/></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno5($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" target="_blank">Treccani</a><paper-icon-button icon="icons:link"/></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno6($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" target="_blank">VIAF</a><paper-icon-button icon="icons:link"/></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno7($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" target="_blank">Wikidata</a><paper-icon-button icon="icons:link"/></t>/*
};
(: generated template function for element spec: persName :)
declare %private function model:template-persName($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="http://localhost:8080/exist/apps/zacutos-letters/persons/{$config?apply-children($config, $node, $params?id)}.xml"><paper-icon-button icon="social:person"/>{$config?apply-children($config, $node, $params?content)}</a></t>/*
};
(: generated template function for element spec: persName :)
declare %private function model:template-persName2($config as map(*), $node as node()*, $params as map(*)) {
    ``[Full Name Hebrew: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: persName :)
declare %private function model:template-persName3($config as map(*), $node as node()*, $params as map(*)) {
    ``[Full Name English: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: person :)
declare %private function model:template-person18($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-popover theme="material"><a href="http://localhost:8080/exist/apps/zacutos-letters/persons/{$config?apply-children($config, $node, $params?id)}.xml">{$config?apply-children($config, $node, $params?headline)}</a><paper-icon-button icon="social:person"/>{$config?apply-children($config, $node, $params?bio)}</pb-popover></t>/*
};
(: generated template function for element spec: place :)
declare %private function model:template-place2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-popover theme="material"><pb-link path="places/{$config?apply-children($config, $node, $params?id)}.xml">{$config?apply-children($config, $node, $params?headline)}</pb-link><paper-icon-button icon="maps:place"/>{$config?apply-children($config, $node, $params?description)}</pb-popover></t>/*
};
(: generated template function for element spec: link :)
declare %private function model:template-link($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="http://localhost:8080/exist/apps/zacutos-letters/letters/{$config?apply-children($config, $node, $params?uri)}.xml">{$config?apply-children($config, $node, $params?content)}</a></t>/*
};
(: generated template function for element spec: msItem :)
declare %private function model:template-msItem($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="http://localhost:8080/exist/apps/zacutos-letters/letters/{$config?apply-children($config, $node, $params?uri)}.xml">{$config?apply-children($config, $node, $params?locus)}{$config?apply-children($config, $node, $params?space)}{$config?apply-children($config, $node, $params?title)}</a></t>/*
};
(: generated template function for element spec: locus :)
declare %private function model:template-locus($config as map(*), $node as node()*, $params as map(*)) {
    ``[fol. `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: support :)
declare %private function model:template-support($config as map(*), $node as node()*, $params as map(*)) {
    ``[Writing Material: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: collation :)
declare %private function model:template-collation($config as map(*), $node as node()*, $params as map(*)) {
    ``[Quiring: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: condition :)
declare %private function model:template-condition($config as map(*), $node as node()*, $params as map(*)) {
    ``[State of Manuscript: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: foliation :)
declare %private function model:template-foliation($config as map(*), $node as node()*, $params as map(*)) {
    ``[Foliation: `{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: dimensions :)
declare %private function model:template-dimensions($config as map(*), $node as node()*, $params as map(*)) {
    ``[(`{string-join($config?apply-children($config, $node, $params?content))}` mm)]``
};
(: generated template function for element spec: depth :)
declare %private function model:template-depth($config as map(*), $node as node()*, $params as map(*)) {
    ``[✕`{string-join($config?apply-children($config, $node, $params?content))}`]``
};
(: generated template function for element spec: height :)
declare %private function model:template-height($config as map(*), $node as node()*, $params as map(*)) {
    ``[`{string-join($config?apply-children($config, $node, $params?content))}`✕]``
};
(: generated template function for element spec: settlement :)
declare %private function model:template-settlement($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="http://localhost:8080/exist/apps/zacutos-letters/places/{$config?apply-children($config, $node, $params?id)}.xml"><paper-icon-button icon="maps:place"/>{$config?apply-children($config, $node, $params?content)}</a></t>/*
};
(:~

    Main entry point for the transformation.
    
 :)
declare function model:transform($options as map(*), $input as node()*) {
        
    let $config :=
        map:merge(($options,
            map {
                "output": ["web"],
                "odd": "/db/apps/zacutos-letters/resources/odd/zacuto-letters.odd",
                "apply": model:apply#2,
                "apply-children": model:apply-children#3
            }
        ))
    
    return (
        html:prepare($config, $input),
    
        let $output := model:apply($config, $input)
        return
            html:finish($config, $output)
    )
};

declare function model:apply($config as map(*), $input as node()*) {
        let $parameters := 
        if (exists($config?parameters)) then $config?parameters else map {}
        let $mode := 
        if (exists($config?mode)) then $config?mode else ()
        let $trackIds := 
        $parameters?track-ids
        let $get := 
        model:source($parameters, ?)
    return
    $input !         (
            let $node := 
                .
            return
                            typeswitch(.)
                    case element(castItem) return
                        (: Insert item, rendered as described in parent list rendition. :)
                        html:listItem($config, ., ("tei-castItem", css:map-rend-to-class(.)), ., ())
                    case element(item) return
                        html:listItem($config, ., ("tei-item", css:map-rend-to-class(.)), ., ())
                    case element(figure) return
                        if (head or @rendition='simple:display') then
                            html:block($config, ., ("tei-figure1", css:map-rend-to-class(.)), .)
                        else
                            html:inline($config, ., ("tei-figure2", css:map-rend-to-class(.)), .)
                    case element(teiHeader) return
                        if ($parameters?header='short') then
                            html:block($config, ., ("tei-teiHeader3", css:map-rend-to-class(.)), .)
                        else
                            html:metadata($config, ., ("tei-teiHeader4", css:map-rend-to-class(.)), .)
                    case element(supplied) return
                        if (parent::choice) then
                            html:inline($config, ., ("tei-supplied1", css:map-rend-to-class(.)), .)
                        else
                            if (@reason='damage') then
                                html:inline($config, ., ("tei-supplied2", css:map-rend-to-class(.)), .)
                            else
                                if (@reason='illegible' or not(@reason)) then
                                    html:inline($config, ., ("tei-supplied3", css:map-rend-to-class(.)), .)
                                else
                                    if (@reason='omitted') then
                                        html:inline($config, ., ("tei-supplied4", css:map-rend-to-class(.)), .)
                                    else
                                        html:inline($config, ., ("tei-supplied5", css:map-rend-to-class(.)), .)
                    case element(milestone) return
                        html:inline($config, ., ("tei-milestone", css:map-rend-to-class(.)), .)
                    case element(ptr) return
                        if (parent::notatedMusic) then
                            html:webcomponent($config, ., ("tei-ptr", css:map-rend-to-class(.)), ., 'pb-mei', map {"url": @target})
                        else
                            $config?apply($config, ./node())
                    case element(label) return
                        html:inline($config, ., ("tei-label", css:map-rend-to-class(.)), .)
                    case element(signed) return
                        if (parent::closer) then
                            html:block($config, ., ("tei-signed1", css:map-rend-to-class(.)), .)
                        else
                            html:inline($config, ., ("tei-signed2", css:map-rend-to-class(.)), .)
                    case element(pb) return
                        if ($parameters?view='edition') then
                            html:omit($config, ., ("tei-pb1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?view='L1780' and not(contains(@edRef, '#L1780'))) then
                                html:omit($config, ., ("tei-pb2", css:map-rend-to-class(.)), .)
                            else
                                if ($parameters?view='N3761' and not(contains(@edRef, '#N3761'))) then
                                    html:omit($config, ., ("tei-pb3", css:map-rend-to-class(.)), .)
                                else
                                    html:break($config, ., css:get-rendition(., ("tei-pb4", css:map-rend-to-class(.))), ., 'page', (concat(if(@n) then concat(@n,' ') else '', if(@facs) then concat('@',@facs) else '')))
                    case element(pc) return
                        html:inline($config, ., ("tei-pc", css:map-rend-to-class(.)), .)
                    case element(anchor) return
                        html:anchor($config, ., ("tei-anchor", css:map-rend-to-class(.)), ., @xml:id)
                    case element(TEI) return
                        if ($parameters?display='cite-me') then
                            let $params := 
                                map {
                                    "uri": 'https://zacuto.kabbalah-editions.org',
                                    "id": /@xml:id,
                                    "content": .
                                }

                                                        let $content := 
                                model:template-TEI($config, ., $params)
                            return
                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-TEI1", css:map-rend-to-class(.)), $content)
                        else
                            html:document($config, ., ("tei-TEI2", css:map-rend-to-class(.)), .)
                    case element(formula) return
                        if (@rendition='simple:display') then
                            html:block($config, ., ("tei-formula1", css:map-rend-to-class(.)), .)
                        else
                            html:inline($config, ., ("tei-formula2", css:map-rend-to-class(.)), .)
                    case element(choice) return
                        if (sic and corr) then
                            html:alternate($config, ., ("tei-choice4", css:map-rend-to-class(.)), ., corr[1], sic[1], map {})
                        else
                            if (abbr and expan) then
                                html:alternate($config, ., ("tei-choice5", css:map-rend-to-class(.)), ., expan[1], abbr[1], map {})
                            else
                                if (orig and reg) then
                                    html:alternate($config, ., ("tei-choice6", css:map-rend-to-class(.)), ., reg[1], orig[1], map {})
                                else
                                    $config?apply($config, ./node())
                    case element(hi) return
                        if (@rendition) then
                            html:inline($config, ., css:get-rendition(., ("tei-hi1", css:map-rend-to-class(.))), .)
                        else
                            if (not(@rendition)) then
                                html:inline($config, ., ("tei-hi2", css:map-rend-to-class(.)), .)
                            else
                                $config?apply($config, ./node())
                    case element(code) return
                        html:inline($config, ., ("tei-code", css:map-rend-to-class(.)), .)
                    case element(note) return
                        if (@type='bioSummary') then
                            html:block($config, ., ("tei-note1", css:map-rend-to-class(.)), .)
                        else
                            if (@type='summary') then
                                html:inline($config, ., ("tei-note2", css:map-rend-to-class(.)), .)
                            else
                                if (parent::person) then
                                    html:inline($config, ., ("tei-note3", css:map-rend-to-class(.)), .)
                                else
                                    if (parent::place) then
                                        html:block($config, ., ("tei-note4", css:map-rend-to-class(.)), .)
                                    else
                                        html:note($config, ., ("tei-note5", css:map-rend-to-class(.)), ., @place, @n)
                    case element(dateline) return
                        html:block($config, ., ("tei-dateline", css:map-rend-to-class(.)), .)
                    case element(back) return
                        html:block($config, ., ("tei-back", css:map-rend-to-class(.)), .)
                    case element(del) return
                        html:inline($config, ., ("tei-del", css:map-rend-to-class(.)), .)
                    case element(trailer) return
                        html:block($config, ., ("tei-trailer", css:map-rend-to-class(.)), .)
                    case element(titlePart) return
                        html:block($config, ., css:get-rendition(., ("tei-titlePart", css:map-rend-to-class(.))), .)
                    case element(ab) return
                        html:paragraph($config, ., ("tei-ab", css:map-rend-to-class(.)), .)
                    case element(revisionDesc) return
                        html:omit($config, ., ("tei-revisionDesc", css:map-rend-to-class(.)), .)
                    case element(am) return
                        html:inline($config, ., ("tei-am", css:map-rend-to-class(.)), .)
                    case element(subst) return
                        html:inline($config, ., ("tei-subst", css:map-rend-to-class(.)), .)
                    case element(roleDesc) return
                        html:block($config, ., ("tei-roleDesc", css:map-rend-to-class(.)), .)
                    case element(orig) return
                        html:inline($config, ., ("tei-orig", css:map-rend-to-class(.)), .)
                    case element(opener) return
                        html:block($config, ., ("tei-opener", css:map-rend-to-class(.)), .)
                    case element(speaker) return
                        html:block($config, ., ("tei-speaker", css:map-rend-to-class(.)), .)
                    case element(imprimatur) return
                        html:block($config, ., ("tei-imprimatur", css:map-rend-to-class(.)), .)
                    case element(publisher) return
                        if (ancestor::teiHeader) then
                            (: Omit if located in teiHeader. :)
                            html:omit($config, ., ("tei-publisher", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(figDesc) return
                        html:inline($config, ., ("tei-figDesc", css:map-rend-to-class(.)), .)
                    case element(rs) return
                        html:inline($config, ., ("tei-rs", css:map-rend-to-class(.)), .)
                    case element(foreign) return
                        html:inline($config, ., ("tei-foreign", css:map-rend-to-class(.)), .)
                    case element(fileDesc) return
                        if ($parameters?header='short') then
                            (
                                html:block($config, ., ("tei-fileDesc1", "header-short", css:map-rend-to-class(.)), titleStmt),
                                html:block($config, ., ("tei-fileDesc2", "header-short", css:map-rend-to-class(.)), editionStmt),
                                html:block($config, ., ("tei-fileDesc3", "header-short", css:map-rend-to-class(.)), publicationStmt)
                            )

                        else
                            html:title($config, ., ("tei-fileDesc4", css:map-rend-to-class(.)), titleStmt)
                    case element(notatedMusic) return
                        html:figure($config, ., ("tei-notatedMusic", css:map-rend-to-class(.)), ptr, label)
                    case element(seg) return
                        html:inline($config, ., css:get-rendition(., ("tei-seg", css:map-rend-to-class(.))), .)
                    case element(profileDesc) return
                        html:omit($config, ., ("tei-profileDesc", css:map-rend-to-class(.)), .)
                    case element(email) return
                        html:inline($config, ., ("tei-email", css:map-rend-to-class(.)), .)
                    case element(text) return
                        html:body($config, ., ("tei-text2", css:map-rend-to-class(.)), .)
                    case element(floatingText) return
                        html:block($config, ., ("tei-floatingText", css:map-rend-to-class(.)), .)
                    case element(sp) return
                        html:block($config, ., ("tei-sp", css:map-rend-to-class(.)), .)
                    case element(abbr) return
                        html:inline($config, ., ("tei-abbr", css:map-rend-to-class(.)), .)
                    case element(table) return
                        html:table($config, ., ("tei-table", css:map-rend-to-class(.)), .)
                    case element(cb) return
                        html:break($config, ., ("tei-cb", css:map-rend-to-class(.)), ., 'column', @n)
                    case element(group) return
                        html:block($config, ., ("tei-group", css:map-rend-to-class(.)), .)
                    case element(licence) return
                        if (@target) then
                            html:omit($config, ., ("tei-licence1", "licence", css:map-rend-to-class(.)), 'Licence')
                        else
                            html:omit($config, ., ("tei-licence2", css:map-rend-to-class(.)), .)
                    case element(editor) return
                        if (ancestor::teiHeader) then
                            html:omit($config, ., ("tei-editor1", css:map-rend-to-class(.)), .)
                        else
                            html:inline($config, ., ("tei-editor2", css:map-rend-to-class(.)), .)
                    case element(c) return
                        html:inline($config, ., ("tei-c", css:map-rend-to-class(.)), .)
                    case element(listBibl) return
                        if (bibl) then
                            html:list($config, ., ("tei-listBibl1", css:map-rend-to-class(.)), bibl, ())
                        else
                            html:block($config, ., ("tei-listBibl2", css:map-rend-to-class(.)), .)
                    case element(address) return
                        html:inline($config, ., ("tei-address", css:map-rend-to-class(.)), .)
                    case element(g) return
                        if (not(text())) then
                            html:glyph($config, ., ("tei-g1", css:map-rend-to-class(.)), .)
                        else
                            html:inline($config, ., ("tei-g2", css:map-rend-to-class(.)), .)
                    case element(author) return
                        if (parent::titleStmt) then
                            (: Wird in der Indexliste nicht angezeigt :)
                            html:omit($config, ., ("tei-author1", css:map-rend-to-class(.)), .)
                        else
                            if (ancestor::teiHeader) then
                                html:block($config, ., ("tei-author2", css:map-rend-to-class(.)), .)
                            else
                                html:inline($config, ., ("tei-author3", css:map-rend-to-class(.)), .)
                    case element(castList) return
                        if (child::*) then
                            html:list($config, ., css:get-rendition(., ("tei-castList", css:map-rend-to-class(.))), castItem, ())
                        else
                            $config?apply($config, ./node())
                    case element(l) return
                        html:block($config, ., css:get-rendition(., ("tei-l", css:map-rend-to-class(.))), .)
                    case element(closer) return
                        html:block($config, ., ("tei-closer", css:map-rend-to-class(.)), .)
                    case element(rhyme) return
                        html:inline($config, ., ("tei-rhyme", css:map-rend-to-class(.)), .)
                    case element(list) return
                        if (@rendition) then
                            html:list($config, ., css:get-rendition(., ("tei-list1", css:map-rend-to-class(.))), item, ())
                        else
                            if (not(@rendition)) then
                                html:list($config, ., ("tei-list2", css:map-rend-to-class(.)), item, ())
                            else
                                $config?apply($config, ./node())
                    case element(p) return
                        if (ancestor::msDesc) then
                            html:inline($config, ., ("tei-p1", css:map-rend-to-class(.)), .)
                        else
                            html:paragraph($config, ., css:get-rendition(., ("tei-p2", css:map-rend-to-class(.))), .)
                    case element(measure) return
                        html:inline($config, ., ("tei-measure", css:map-rend-to-class(.)), .)
                    case element(q) return
                        if (l) then
                            html:block($config, ., css:get-rendition(., ("tei-q1", css:map-rend-to-class(.))), .)
                        else
                            if (ancestor::p or ancestor::cell) then
                                html:inline($config, ., css:get-rendition(., ("tei-q2", css:map-rend-to-class(.))), .)
                            else
                                html:block($config, ., css:get-rendition(., ("tei-q3", css:map-rend-to-class(.))), .)
                    case element(actor) return
                        html:inline($config, ., ("tei-actor", css:map-rend-to-class(.)), .)
                    case element(epigraph) return
                        html:block($config, ., ("tei-epigraph", css:map-rend-to-class(.)), .)
                    case element(s) return
                        html:inline($config, ., ("tei-s", css:map-rend-to-class(.)), .)
                    case element(docTitle) return
                        html:block($config, ., css:get-rendition(., ("tei-docTitle", css:map-rend-to-class(.))), .)
                    case element(lb) return
                        if (ancestor::msDesc) then
                            html:inline($config, ., ("tei-lb1", css:map-rend-to-class(.)), .)
                        else
                            html:break($config, ., css:get-rendition(., ("tei-lb2", css:map-rend-to-class(.))), ., 'line', @n)
                    case element(w) return
                        html:inline($config, ., ("tei-w", css:map-rend-to-class(.)), .)
                    case element(stage) return
                        html:block($config, ., ("tei-stage", css:map-rend-to-class(.)), .)
                    case element(titlePage) return
                        html:block($config, ., css:get-rendition(., ("tei-titlePage", css:map-rend-to-class(.))), .)
                    case element(name) return
                        html:inline($config, ., ("tei-name", css:map-rend-to-class(.)), .)
                    case element(front) return
                        html:block($config, ., ("tei-front", css:map-rend-to-class(.)), .)
                    case element(lg) return
                        html:block($config, ., ("tei-lg", css:map-rend-to-class(.)), .)
                    case element(publicationStmt) return
                        html:block($config, ., ("tei-publicationStmt1", css:map-rend-to-class(.)), availability/licence)
                    case element(biblScope) return
                        html:inline($config, ., ("tei-biblScope", css:map-rend-to-class(.)), .)
                    case element(desc) return
                        html:inline($config, ., ("tei-desc", css:map-rend-to-class(.)), .)
                    case element(role) return
                        html:block($config, ., ("tei-role", css:map-rend-to-class(.)), .)
                    case element(docEdition) return
                        html:inline($config, ., ("tei-docEdition", css:map-rend-to-class(.)), .)
                    case element(num) return
                        html:inline($config, ., ("tei-num", css:map-rend-to-class(.)), .)
                    case element(docImprint) return
                        html:inline($config, ., ("tei-docImprint", css:map-rend-to-class(.)), .)
                    case element(postscript) return
                        html:block($config, ., ("tei-postscript", css:map-rend-to-class(.)), .)
                    case element(edition) return
                        if (ancestor::teiHeader) then
                            html:block($config, ., ("tei-edition", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(cell) return
                        (: Insert table cell. :)
                        html:cell($config, ., ("tei-cell", css:map-rend-to-class(.)), ., ())
                    case element(relatedItem) return
                        html:inline($config, ., ("tei-relatedItem", css:map-rend-to-class(.)), .)
                    case element(div) return
                        if (parent::body or parent::front or parent::back) then
                            html:section($config, ., ("tei-div1", css:map-rend-to-class(.)), .)
                        else
                            html:block($config, ., ("tei-div2", css:map-rend-to-class(.)), .)
                    case element(graphic) return
                        html:graphic($config, ., ("tei-graphic", css:map-rend-to-class(.)), ., @url, @width, @height, @scale, desc)
                    case element(reg) return
                        html:inline($config, ., ("tei-reg", css:map-rend-to-class(.)), .)
                    case element(ref) return
                        if (not(@target)) then
                            html:inline($config, ., ("tei-ref1", css:map-rend-to-class(.)), .)
                        else
                            if (not(node())) then
                                html:link($config, ., ("tei-ref2", css:map-rend-to-class(.)), @target, @target, (), map {})
                            else
                                html:link($config, ., ("tei-ref3", css:map-rend-to-class(.)), ., @target, (), map {})
                    case element(pubPlace) return
                        if (ancestor::teiHeader) then
                            (: Omit if located in teiHeader. :)
                            html:omit($config, ., ("tei-pubPlace", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(add) return
                        html:inline($config, ., ("tei-add", css:map-rend-to-class(.)), .)
                    case element(docDate) return
                        html:inline($config, ., ("tei-docDate", css:map-rend-to-class(.)), .)
                    case element(head) return
                        if (parent::div[@type="verse"]) then
                            html:block($config, ., ("tei-head1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?header='short') then
                                html:inline($config, ., ("tei-head2", css:map-rend-to-class(.)), replace(string-join(.//text()[not(parent::ref)]), '^(.*?)[^\w]*$', '$1'))
                            else
                                if (parent::figure) then
                                    html:block($config, ., ("tei-head3", css:map-rend-to-class(.)), .)
                                else
                                    if (parent::table) then
                                        html:block($config, ., ("tei-head4", css:map-rend-to-class(.)), .)
                                    else
                                        if (parent::lg) then
                                            html:block($config, ., ("tei-head5", css:map-rend-to-class(.)), .)
                                        else
                                            if (parent::list) then
                                                html:block($config, ., ("tei-head6", css:map-rend-to-class(.)), .)
                                            else
                                                if (parent::div) then
                                                    html:heading($config, ., ("tei-head7", css:map-rend-to-class(.)), ., count(ancestor::div))
                                                else
                                                    html:block($config, ., ("tei-head8", css:map-rend-to-class(.)), .)
                    case element(ex) return
                        html:inline($config, ., ("tei-ex", css:map-rend-to-class(.)), .)
                    case element(castGroup) return
                        if (child::*) then
                            (: Insert list. :)
                            html:list($config, ., ("tei-castGroup", css:map-rend-to-class(.)), castItem|castGroup, ())
                        else
                            $config?apply($config, ./node())
                    case element(time) return
                        html:inline($config, ., ("tei-time", css:map-rend-to-class(.)), .)
                    case element(bibl) return
                        if (parent::cit and not($parameters?view='edition')) then
                            html:omit($config, ., ("tei-bibl1", css:map-rend-to-class(.)), .)
                        else
                            if (parent::person) then
                                let $params := 
                                    map {
                                        "uri": @path,
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-bibl2($config, ., $params)
                                return
                                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-bibl2", css:map-rend-to-class(.)), $content)
                            else
                                if (parent::listBibl) then
                                    html:listItem($config, ., ("tei-bibl3", css:map-rend-to-class(.)), ., ())
                                else
                                    html:inline($config, ., ("tei-bibl4", css:map-rend-to-class(.)), .)
                    case element(salute) return
                        if (parent::closer) then
                            html:inline($config, ., ("tei-salute1", css:map-rend-to-class(.)), .)
                        else
                            html:block($config, ., ("tei-salute2", css:map-rend-to-class(.)), .)
                    case element(unclear) return
                        html:inline($config, ., ("tei-unclear", css:map-rend-to-class(.)), .)
                    case element(argument) return
                        html:block($config, ., ("tei-argument", css:map-rend-to-class(.)), .)
                    case element(date) return
                        if (parent::correspAction) then
                            html:omit($config, ., ("tei-date1", css:map-rend-to-class(.)), .)
                        else
                            if (@when) then
                                html:alternate($config, ., ("tei-date5", css:map-rend-to-class(.)), ., ., @when, map {})
                            else
                                if (text()) then
                                    html:inline($config, ., ("tei-date6", css:map-rend-to-class(.)), .)
                                else
                                    $config?apply($config, ./node())
                    case element(title) return
                        if (@level="s") then
                            html:omit($config, ., ("tei-title1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?header='short') then
                                html:heading($config, ., ("tei-title3", css:map-rend-to-class(.)), ., 5)
                            else
                                if (parent::titleStmt/parent::fileDesc) then
                                    (
                                        if (preceding-sibling::title) then
                                            html:omit($config, ., ("tei-title4", css:map-rend-to-class(.)), ' — ')
                                        else
                                            (),
                                        html:inline($config, ., ("tei-title5", css:map-rend-to-class(.)), .)
                                    )

                                else
                                    if (not(@level) and parent::bibl) then
                                        html:inline($config, ., ("tei-title6", css:map-rend-to-class(.)), .)
                                    else
                                        if (@level='m' or not(@level)) then
                                            (
                                                html:inline($config, ., ("tei-title7", css:map-rend-to-class(.)), .),
                                                if (ancestor::biblFull) then
                                                    html:text($config, ., ("tei-title8", css:map-rend-to-class(.)), ', ')
                                                else
                                                    ()
                                            )

                                        else
                                            if (@level='s' or @level='j') then
                                                (
                                                    html:omit($config, ., ("tei-title9", css:map-rend-to-class(.)), .),
                                                    if (following-sibling::* and     (  ancestor::biblFull)) then
                                                        html:omit($config, ., ("tei-title10", css:map-rend-to-class(.)), ', ')
                                                    else
                                                        ()
                                                )

                                            else
                                                if (@level='u' or @level='a') then
                                                    (
                                                        html:inline($config, ., ("tei-title11", css:map-rend-to-class(.)), .),
                                                        if (following-sibling::* and     (    ancestor::biblFull)) then
                                                            html:text($config, ., ("tei-title12", css:map-rend-to-class(.)), '. ')
                                                        else
                                                            ()
                                                    )

                                                else
                                                    (: More than one model without predicate found for ident title. Choosing first one. :)
                                                    html:inline($config, ., ("tei-title2", css:map-rend-to-class(.)), .)
                    case element(corr) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            (: simple inline, if in parent choice. :)
                            html:inline($config, ., ("tei-corr1", css:map-rend-to-class(.)), .)
                        else
                            html:inline($config, ., ("tei-corr2", css:map-rend-to-class(.)), .)
                    case element(cit) return
                        if (not($parameters?view='edition')) then
                            html:inline($config, ., ("tei-cit1", css:map-rend-to-class(.)), .)
                        else
                            if (child::quote and child::bibl and $parameters?view='edition') then
                                (: Insert citation :)
                                let $params := 
                                    map {
                                        "content": quote,
                                        "alternate": bibl,
                                        "persistent": true(),
                                        "name": 'pb-popover' and 'pb-link',
                                        "path": bibl/@path,
                                        "xid": bibl/@xml-id,
                                        "odd": bibl/@odd
                                    }

                                                                let $content := 
                                    model:template-cit2($config, ., $params)
                                return
                                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-cit2", css:map-rend-to-class(.)), $content)
                            else
                                $config?apply($config, ./node())
                    case element(titleStmt) return
                        if ($parameters?mode='title') then
                            html:heading($config, ., ("tei-titleStmt3", css:map-rend-to-class(.)), title[not(@type)], 5)
                        else
                            if ($parameters?header='short') then
                                (
                                    html:link($config, ., ("tei-titleStmt4", css:map-rend-to-class(.)), title[1], $parameters?doc, (), map {}),
                                    html:block($config, ., ("tei-titleStmt5", css:map-rend-to-class(.)), subsequence(title, 2)),
                                    html:block($config, ., ("tei-titleStmt6", css:map-rend-to-class(.)), author)
                                )

                            else
                                html:block($config, ., ("tei-titleStmt7", css:map-rend-to-class(.)), .)
                    case element(sic) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            html:inline($config, ., ("tei-sic1", css:map-rend-to-class(.)), .)
                        else
                            html:inline($config, ., ("tei-sic2", css:map-rend-to-class(.)), .)
                    case element(expan) return
                        html:inline($config, ., ("tei-expan", css:map-rend-to-class(.)), .)
                    case element(body) return
                        (
                            html:index($config, ., ("tei-body1", css:map-rend-to-class(.)), 'toc', .),
                            html:block($config, ., ("tei-body2", css:map-rend-to-class(.)), .)
                        )

                    case element(spGrp) return
                        html:block($config, ., ("tei-spGrp", css:map-rend-to-class(.)), .)
                    case element(fw) return
                        if (ancestor::p or ancestor::ab) then
                            html:inline($config, ., ("tei-fw1", css:map-rend-to-class(.)), .)
                        else
                            html:block($config, ., ("tei-fw2", css:map-rend-to-class(.)), .)
                    case element(encodingDesc) return
                        html:omit($config, ., ("tei-encodingDesc", css:map-rend-to-class(.)), .)
                    case element(addrLine) return
                        html:inline($config, ., ("tei-addrLine", css:map-rend-to-class(.)), .)
                    case element(gap) return
                        if (desc) then
                            html:inline($config, ., ("tei-gap1", css:map-rend-to-class(.)), .)
                        else
                            if (@extent) then
                                html:inline($config, ., ("tei-gap2", css:map-rend-to-class(.)), @extent)
                            else
                                html:inline($config, ., ("tei-gap3", css:map-rend-to-class(.)), .)
                    case element(quote) return
                        if (not($parameters?view='edition') and ancestor::p) then
                            html:inline($config, ., ("tei-quote1", css:map-rend-to-class(.)), .)
                        else
                            if (ancestor::p) then
                                (: If it is inside a paragraph then it is inline, otherwise it is block level :)
                                html:inline($config, ., css:get-rendition(., ("tei-quote2", "quote", css:map-rend-to-class(.))), .)
                            else
                                (: If it is inside a paragraph then it is inline, otherwise it is block level :)
                                html:block($config, ., css:get-rendition(., ("tei-quote3", css:map-rend-to-class(.))), .)
                    case element(row) return
                        if (@role='label') then
                            html:row($config, ., ("tei-row1", css:map-rend-to-class(.)), .)
                        else
                            (: Insert table row. :)
                            html:row($config, ., ("tei-row2", css:map-rend-to-class(.)), .)
                    case element(docAuthor) return
                        html:inline($config, ., ("tei-docAuthor", css:map-rend-to-class(.)), .)
                    case element(byline) return
                        html:block($config, ., ("tei-byline", css:map-rend-to-class(.)), .)
                    case element(app) return
                        (
                            if ($parameters?view='edition') then
                                (: reading text markiert Textvarianten nicht. :)
                                html:inline($config, ., ("tei-app2", css:map-rend-to-class(.)), lem)
                            else
                                (),
                            if ($parameters?view='A4732' or $parameters?view='B459' or $parameters?view='BJTS' or $parameters?view='L9165' or $parameters?view='N3836' or $parameters?view='N3820' or $parameters?view='V1761' or $parameters?view='W66' or $parameters?view='N3761' or $parameters?view='L1780') then
                                (: Parameter um Leithandschriften auch in Synopse anzuzeigen – AUF VOLLSTÄNDIGKEIT PRÜFEN! Nur notwendig wenn wir tatsächlich mehrere Textzeugen in die Edition aufnehmen. :)
                                let $params := 
                                    map {
                                        "content": lem,
                                        "key": @xml:id
                                    }

                                                                let $content := 
                                    model:template-app3($config, ., $params)
                                return
                                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-app3", "lem", css:map-rend-to-class(.)), $content)
                            else
                                (),
                            if (not($parameters?view='edition')) then
                                let $params := 
                                    map {
                                        "content": rdg,
                                        "key": @xml:id
                                    }

                                                                let $content := 
                                    model:template-app4($config, ., $params)
                                return
                                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-app4", "lem", css:map-rend-to-class(.)), $content)
                            else
                                ()
                        )

                    case element(lem) return
                        if ($parameters?view='W66' and not(contains(@wit, '#W66'))) then
                            html:omit($config, ., ("tei-lem1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?view='L9165' and not(contains(@wit, '#L9165'))) then
                                html:omit($config, ., ("tei-lem2", "lem", css:map-rend-to-class(.)), .)
                            else
                                if ($parameters?view='N3761' and not(contains(@wit, '#N3761'))) then
                                    (: N3761 :)
                                    html:omit($config, ., ("tei-lem3", "lem", css:map-rend-to-class(.)), .)
                                else
                                    if ($parameters?view='L1780' and not(contains(@wit, '#L1780'))) then
                                        (: L1780 :)
                                        html:omit($config, ., ("tei-lem4", "lem", css:map-rend-to-class(.)), .)
                                    else
                                        $config?apply($config, ./node())
                    case element(birth) return
                        if (exists(birth)) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-birth($config, ., $params)
                            return
                                                        html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-birth", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(death) return
                        if (exists(death)) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-death($config, ., $params)
                            return
                                                        html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-death", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(idno) return
                        if (parent::correspAction) then
                            html:omit($config, ., ("tei-idno1", css:map-rend-to-class(.)), .)
                        else
                            if (@source='isni') then
                                let $params := 
                                    map {
                                        "uri": 'https://isni.org/isni/' ||  replace(string(), ' ', '') || '',
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-idno2($config, ., $params)
                                return
                                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno2", css:map-rend-to-class(.)), $content)
                            else
                                if (@source='gnd') then
                                    let $params := 
                                        map {
                                            "uri": 'https://d-nb.info/gnd/' || string() || '/',
                                            "content": .
                                        }

                                                                        let $content := 
                                        model:template-idno3($config, ., $params)
                                    return
                                                                        html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno3", css:map-rend-to-class(.)), $content)
                                else
                                    if (@source='jE') then
                                        let $params := 
                                            map {
                                                "uri": (.),
                                                "content": .
                                            }

                                                                                let $content := 
                                            model:template-idno4($config, ., $params)
                                        return
                                                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno4", css:map-rend-to-class(.)), $content)
                                    else
                                        if (@source='treccani') then
                                            let $params := 
                                                map {
                                                    "uri": (.),
                                                    "content": .
                                                }

                                                                                        let $content := 
                                                model:template-idno5($config, ., $params)
                                            return
                                                                                        html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno5", css:map-rend-to-class(.)), $content)
                                        else
                                            if (@source='viaf') then
                                                let $params := 
                                                    map {
                                                        "uri": 'http://viaf.org/viaf/' || replace(string(), ' ', '') || '/',
                                                        "content": .
                                                    }

                                                                                                let $content := 
                                                    model:template-idno6($config, ., $params)
                                                return
                                                                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno6", css:map-rend-to-class(.)), $content)
                                            else
                                                if (@source='wikidata') then
                                                    let $params := 
                                                        map {
                                                            "uri": 'https://www.wikidata.org/wiki/' || string() || '',
                                                            "content": .
                                                        }

                                                                                                        let $content := 
                                                        model:template-idno7($config, ., $params)
                                                    return
                                                                                                        html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno7", css:map-rend-to-class(.)), $content)
                                                else
                                                    if (parent::person) then
                                                        html:listItem($config, ., ("tei-idno8", css:map-rend-to-class(.)), ., ())
                                                    else
                                                        $config?apply($config, ./node())
                    case element(persName) return
                        if (parent::correspAction) then
                            let $params := 
                                map {
                                    "content": .,
                                    "id": @key
                                }

                                                        let $content := 
                                model:template-persName($config, ., $params)
                            return
                                                        html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-persName1", css:map-rend-to-class(.)), $content)
                        else
                            if (@type='main' and @xml:lang='he' and $parameters?view='biogram') then
                                let $params := 
                                    map {
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-persName2($config, ., $params)
                                return
                                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-persName2", css:map-rend-to-class(.)), $content)
                            else
                                if (@type='main' and @xml:lang='en' and $parameters?view='biogram') then
                                    let $params := 
                                        map {
                                            "content": .
                                        }

                                                                        let $content := 
                                        model:template-persName3($config, ., $params)
                                    return
                                                                        html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-persName3", css:map-rend-to-class(.)), $content)
                                else
                                    if (ancestor::text and $parameters?view='edition') then
                                        html:alternate($config, ., ("tei-persName5", "persName", css:map-rend-to-class(.)), ., ., id(@key, doc("/db/apps/zacutos-letters/data/people.xml")), map {})
                                    else
                                        html:inline($config, ., ("tei-persName6", css:map-rend-to-class(.)), .)
                    case element(person) return
                        if ($parameters?view='letterList') then
                            (
                                if (exists(linkGrp[@type="sender"])) then
                                    (: Letters Sent Head :)
                                    html:heading($config, ., ("tei-person1", css:map-rend-to-class(.)), 'Letters Sent', 2)
                                else
                                    (),
                                if (exists(linkGrp[@type="sender"])) then
                                    (: Letters Sent Content :)
                                    html:block($config, ., ("tei-person2", css:map-rend-to-class(.)), linkGrp[@type="sender"])
                                else
                                    (),
                                if (exists(linkGrp[@type="adressee"])) then
                                    (: Letters Received Head :)
                                    html:heading($config, ., ("tei-person3", css:map-rend-to-class(.)), 'Letters Received', 2)
                                else
                                    (),
                                if (exists(linkGrp[@type="adressee"])) then
                                    (: Letters Received Content :)
                                    html:block($config, ., ("tei-person4", css:map-rend-to-class(.)), linkGrp[@type="adressee"])
                                else
                                    (),
                                if (exists(linkGrp[@type="mentioned-by-zacuto"])) then
                                    (: Letters Mentioned by Zacuto Head :)
                                    html:heading($config, ., ("tei-person5", css:map-rend-to-class(.)), 'Mentioned in Letters by Zacuto', 2)
                                else
                                    (),
                                if (exists(linkGrp[@type="mentioned-by-zacuto"])) then
                                    (: Letters Mentioned by Zacuto Content :)
                                    html:block($config, ., ("tei-person6", css:map-rend-to-class(.)), linkGrp[@type="mentioned-by-zacuto"])
                                else
                                    (),
                                if (exists(linkGrp[@type="mentioned-by-other"])) then
                                    (: Letters Mentioned by Other Head :)
                                    html:heading($config, ., ("tei-person7", css:map-rend-to-class(.)), 'Mentioned in Letters by Others', 2)
                                else
                                    (),
                                if (exists(linkGrp[@type="mentioned-by-other"])) then
                                    (: Letters Mentioned by Other Content :)
                                    html:block($config, ., ("tei-person8", css:map-rend-to-class(.)), linkGrp[@type="mentioned-by-other"])
                                else
                                    ()
                            )

                        else
                            if ($parameters?view='biogram') then
                                (
                                    html:heading($config, ., ("tei-person9", css:map-rend-to-class(.)), 'Names', 2),
                                    html:block($config, ., ("tei-person10", css:map-rend-to-class(.)), persName),
                                    if (exists(note[@type="bioSummary"] or death or birth)) then
                                        html:heading($config, ., ("tei-person11", css:map-rend-to-class(.)), 'Biography', 2)
                                    else
                                        (),
                                    (: Birth :)
                                    html:block($config, ., ("tei-person12", css:map-rend-to-class(.)), birth),
                                    (: Death :)
                                    html:block($config, ., ("tei-person13", css:map-rend-to-class(.)), death),
                                    if (exists(note[@type="bioSummary"])) then
                                        html:block($config, ., ("tei-person14", css:map-rend-to-class(.)), note[@type="bioSummary"])
                                    else
                                        (),
                                    if (exists(idno)) then
                                        html:heading($config, ., ("tei-person15", css:map-rend-to-class(.)), 'External References', 2)
                                    else
                                        (),
                                    if (exists(idno)) then
                                        html:block($config, ., ("tei-person16", css:map-rend-to-class(.)), idno)
                                    else
                                        ()
                                )

                            else
                                if (parent::listPersons) then
                                    html:inline($config, ., ("tei-person17", css:map-rend-to-class(.)), .)
                                else
                                    (
                                        (: Person Popover Edition-View :)
                                        let $params := 
                                            map {
                                                "headline": persName[@xml:lang="en" and @type="full"],
                                                "bio": note[@type="bioSummary"],
                                                "id": ./@xml:id/string(),
                                                "content": .
                                            }

                                                                                let $content := 
                                            model:template-person18($config, ., $params)
                                        return
                                                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-person18", css:map-rend-to-class(.)), $content)
                                    )

                    case element(placeName) return
                        if ($parameters?view='edition') then
                            html:alternate($config, ., ("tei-placeName1", "placeName", css:map-rend-to-class(.)), ., ., id(@key, doc("/db/apps/zacutos-letters/data/places.xml")), map {})
                        else
                            if (ancestor::text and $parameters?view='edition') then
                                html:alternate($config, ., ("tei-placeName2", css:map-rend-to-class(.)), ., ., id(@key, doc("/db/apps/zacutos-letters/data/places.xml")), map {})
                            else
                                $config?apply($config, ./node())
                    case element(sex) return
                        html:inline($config, ., ("tei-sex", css:map-rend-to-class(.)), .)
                    case element(workName) return
                        html:inline($config, ., ("tei-workName", "workName", css:map-rend-to-class(.)), .)
                    case element(bold) return
                        html:paragraph($config, ., ("tei-bold", css:map-rend-to-class(.)), .)
                    case element(rdg) return
                        if ($parameters?view='W66' and not(contains(@wit, '#W66'))) then
                            html:omit($config, ., ("tei-rdg1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?view='L9165' and not(contains(@wit, '#L9165'))) then
                                html:omit($config, ., ("tei-rdg2", css:map-rend-to-class(.)), .)
                            else
                                if ($parameters?view='N3761' and not(contains(@wit, '#N3761'))) then
                                    (: N3761 :)
                                    html:omit($config, ., ("tei-rdg3", css:map-rend-to-class(.)), .)
                                else
                                    if ($parameters?view='L1780' and not(contains(@wit, '#L1780'))) then
                                        (: L1780 :)
                                        html:omit($config, ., ("tei-rdg4", css:map-rend-to-class(.)), .)
                                    else
                                        html:inline($config, ., ("tei-rdg5", css:map-rend-to-class(.)), .)
                    case element(availability) return
                        html:omit($config, ., ("tei-availability", css:map-rend-to-class(.)), .)
                    case element(place) return
                        if ($parameters?view='place') then
                            (
                                html:inline($config, ., ("tei-place1", css:map-rend-to-class(.)), .)
                            )

                        else
                            (
                                let $params := 
                                    map {
                                        "headline": placeName[@xml:lang="en"],
                                        "description": note,
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-place2($config, ., $params)
                                return
                                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-place2", css:map-rend-to-class(.)), $content)
                            )

                    case element(witness) return
                        html:omit($config, ., ("tei-witness", css:map-rend-to-class(.)), .)
                    case element(link) return
                        if (parent::linkGrp) then
                            let $params := 
                                map {
                                    "content": .,
                                    "uri": @target
                                }

                                                        let $content := 
                                model:template-link($config, ., $params)
                            return
                                                        html:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-link", css:map-rend-to-class(.)), $content, ())
                        else
                            $config?apply($config, ./node())
                    case element(linkGrp) return
                        html:inline($config, ., ("tei-linkGrp", css:map-rend-to-class(.)), .)
                    case element(msItem) return
                        let $params := 
                            map {
                                "title": title,
                                "uri": @xml:id,
                                "locus": locus,
                                "space": ': ',
                                "content": .
                            }

                                                let $content := 
                            model:template-msItem($config, ., $params)
                        return
                                                html:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-msItem", css:map-rend-to-class(.)), $content, ())
                    case element(locus) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-locus($config, ., $params)
                        return
                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-locus", css:map-rend-to-class(.)), $content)
                    case element(material) return
                        html:inline($config, ., ("tei-material", css:map-rend-to-class(.)), .)
                    case element(support) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-support($config, ., $params)
                        return
                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-support", css:map-rend-to-class(.)), $content)
                    case element(physDesc) return
                        (
                            (: Material :)
                            html:heading($config, ., ("tei-physDesc1", css:map-rend-to-class(.)), 'Material', 2),
                            html:inline($config, ., ("tei-physDesc2", css:map-rend-to-class(.)), objectDesc/supportDesc),
                            (: Layout :)
                            html:heading($config, ., ("tei-physDesc3", css:map-rend-to-class(.)), 'Text Layout', 2),
                            html:inline($config, ., ("tei-physDesc4", css:map-rend-to-class(.)), objectDesc/layoutDesc),
                            (: Script :)
                            html:heading($config, ., ("tei-physDesc5", css:map-rend-to-class(.)), 'Script', 2),
                            html:inline($config, ., ("tei-physDesc6", css:map-rend-to-class(.)), handDesc),
                            (: Binding :)
                            html:heading($config, ., ("tei-physDesc7", css:map-rend-to-class(.)), 'Binding', 2),
                            html:inline($config, ., ("tei-physDesc8", css:map-rend-to-class(.)), bindingDesc)
                        )

                    case element(extent) return
                        html:block($config, ., ("tei-extent", css:map-rend-to-class(.)), .)
                    case element(collation) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-collation($config, ., $params)
                        return
                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-collation", css:map-rend-to-class(.)), $content)
                    case element(condition) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-condition($config, ., $params)
                        return
                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-condition", css:map-rend-to-class(.)), $content)
                    case element(foliation) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-foliation($config, ., $params)
                        return
                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-foliation", css:map-rend-to-class(.)), $content)
                    case element(history) return
                        (
                            if (exists(origin)) then
                                (: Origin :)
                                html:heading($config, ., ("tei-history1", css:map-rend-to-class(.)), 'Production', 2)
                            else
                                (),
                            if (exists(origin)) then
                                html:inline($config, ., ("tei-history2", css:map-rend-to-class(.)), origin)
                            else
                                (),
                            if (exists(provenance)) then
                                (: Provenance :)
                                html:heading($config, ., ("tei-history3", css:map-rend-to-class(.)), 'Provenance', 2)
                            else
                                (),
                            if (exists(provenance)) then
                                html:inline($config, ., ("tei-history4", css:map-rend-to-class(.)), provenance)
                            else
                                (),
                            if (exists(acquisition)) then
                                (: Currently Held :)
                                html:heading($config, ., ("tei-history5", css:map-rend-to-class(.)), 'Currently Held', 2)
                            else
                                (),
                            if (exists(acquisition)) then
                                html:inline($config, ., ("tei-history6", css:map-rend-to-class(.)), acquisition)
                            else
                                ()
                        )

                    case element(dimensions) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-dimensions($config, ., $params)
                        return
                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-dimensions", css:map-rend-to-class(.)), $content)
                    case element(depth) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-depth($config, ., $params)
                        return
                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-depth", css:map-rend-to-class(.)), $content)
                    case element(height) return
                        let $params := 
                            map {
                                "content": .
                            }

                                                let $content := 
                            model:template-height($config, ., $params)
                        return
                                                html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-height", css:map-rend-to-class(.)), $content)
                    case element(settlement) return
                        if (parent::correspAction) then
                            let $params := 
                                map {
                                    "content": .,
                                    "id": @key
                                }

                                                        let $content := 
                                model:template-settlement($config, ., $params)
                            return
                                                        html:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-settlement1", css:map-rend-to-class(.)), $content)
                        else
                            html:inline($config, ., ("tei-settlement2", css:map-rend-to-class(.)), .)
                    case element(exist:match) return
                        html:match($config, ., .)
                    case element() return
                        if (namespace-uri(.) = 'http://www.tei-c.org/ns/1.0') then
                            $config?apply($config, ./node())
                        else
                            .
                    case text() | xs:anyAtomicType return
                        html:escapeChars(.)
                    default return 
                        $config?apply($config, ./node())

        )

};

declare function model:apply-children($config as map(*), $node as element(), $content as item()*) {
        
    if ($config?template) then
        $content
    else
        $content ! (
            typeswitch(.)
                case element() return
                    if (. is $node) then
                        $config?apply($config, ./node())
                    else
                        $config?apply($config, .)
                default return
                    html:escapeChars(.)
        )
};

declare function model:source($parameters as map(*), $elem as element()) {
        
    let $id := $elem/@exist:id
    return
        if ($id and $parameters?root) then
            util:node-by-id($parameters?root, $id)
        else
            $elem
};

declare function model:process-annotation($html, $context as node()) {
        
    let $classRegex := analyze-string($html/@class, '\s?annotation-([^\s]+)\s?')
    return
        if ($classRegex//fn:match) then (
            if ($html/@data-type) then
                ()
            else
                attribute data-type { ($classRegex//fn:group)[1]/string() },
            if ($html/@data-annotation) then
                ()
            else
                attribute data-annotation {
                    map:merge($context/@* ! map:entry(node-name(.), ./string()))
                    => serialize(map { "method": "json" })
                }
        ) else
            ()
                    
};

declare function model:map($html, $context as node(), $trackIds as item()?) {
        
    if ($trackIds) then
        for $node in $html
        return
            typeswitch ($node)
                case document-node() | comment() | processing-instruction() return 
                    $node
                case element() return
                    if ($node/@class = ("footnote")) then
                        if (local-name($node) = 'pb-popover') then
                            ()
                        else
                            element { node-name($node) }{
                                $node/@*,
                                $node/*[@class="fn-number"],
                                model:map($node/*[@class="fn-content"], $context, $trackIds)
                            }
                    else
                        element { node-name($node) }{
                            attribute data-tei { util:node-id($context) },
                            $node/@*,
                            model:process-annotation($node, $context),
                            $node/node()
                        }
                default return
                    <pb-anchor data-tei="{ util:node-id($context) }">{$node}</pb-anchor>
    else
        $html
                    
};

