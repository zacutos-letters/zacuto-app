(:~

    Transformation module generated from TEI ODD extensions for processing models.
    ODD: /db/apps/zacutos-letters/resources/odd/zacuto-letters.odd
 :)
xquery version "3.1";

module namespace model="http://www.tei-c.org/pm/models/zacuto-letters/fo";

declare default element namespace "http://www.tei-c.org/ns/1.0";

declare namespace xhtml='http://www.w3.org/1999/xhtml';

declare namespace xi='http://www.w3.org/2001/XInclude';

declare namespace pb='http://teipublisher.com/1.0';

import module namespace css="http://www.tei-c.org/tei-simple/xquery/css";

import module namespace fo="http://www.tei-c.org/tei-simple/xquery/functions/fo";

(: generated template function for element spec: bibl :)
declare %private function model:template-bibl($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">{$config?apply-children($config, $node, $params?content)}</a></t>/*
};
(: generated template function for element spec: cit :)
declare %private function model:template-cit($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-link id="{$config?apply-children($config, $node, $params?alternate)}" path="{$config?apply-children($config, $node, $params?path)}" xml-id="{$config?apply-children($config, $node, $params?xid)}" odd="{$config?apply-children($config, $node, $params?odd)}" subscribe="quote" emit="quote">{$config?apply-children($config, $node, $params?content)}</pb-link><pb-popover theme="material" placement="bottom" for="{$config?apply-children($config, $node, $params?alternate)}">{$config?apply-children($config, $node, $params?alternate)}</pb-popover></t>/*
};
(: generated template function for element spec: app :)
declare %private function model:template-app($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-popover theme="material" placement="top">{$config?apply-children($config, $node, $params?content)}<span slot="alternate">{$config?apply-children($config, $node, $params?alter)}</span></pb-popover></t>/*
};
(: generated template function for element spec: app :)
declare %private function model:template-app2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-popover theme="material" placement="top">{$config?apply-children($config, $node, $params?content)}<span slot="alternate">{$config?apply-children($config, $node, $params?altLabel)}] {$config?apply-children($config, $node, $params?alternate)}</span></pb-popover></t>/*
};
(: generated template function for element spec: app :)
declare %private function model:template-app3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-highlight key="{$config?apply-children($config, $node, $params?key)}" highlight-self="highlight-self">{$config?apply-children($config, $node, $params?content)}</pb-highlight></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">ISNI</a></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">GND</a></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">Jewish Encyclopedia</a></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno4($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">Treccani</a></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno5($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">VIAF</a></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno6($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}">Wikidata</a></t>/*
};
(:~

    Main entry point for the transformation.
    
 :)
declare function model:transform($options as map(*), $input as node()*) {
        
    let $config :=
        map:merge(($options,
            map {
                "output": ["fo","print"],
                "odd": "/db/apps/zacutos-letters/resources/odd/zacuto-letters.odd",
                "apply": model:apply#2,
                "apply-children": model:apply-children#3
            }
        ))
    let $config := fo:init($config, $input)
    
    return (
        
        let $output := model:apply($config, $input)
        return
            $output
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
                        fo:listItem($config, ., ("tei-castItem", css:map-rend-to-class(.)), ., ())
                    case element(item) return
                        fo:listItem($config, ., ("tei-item", css:map-rend-to-class(.)), ., ())
                    case element(figure) return
                        if (head or @rendition='simple:display') then
                            fo:block($config, ., ("tei-figure1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-figure2", css:map-rend-to-class(.)), .)
                    case element(teiHeader) return
                        fo:omit($config, ., ("tei-teiHeader2", css:map-rend-to-class(.)), .)
                    case element(supplied) return
                        if (parent::choice) then
                            fo:inline($config, ., ("tei-supplied1", css:map-rend-to-class(.)), .)
                        else
                            if (@reason='damage') then
                                fo:inline($config, ., ("tei-supplied2", css:map-rend-to-class(.)), .)
                            else
                                if (@reason='illegible' or not(@reason)) then
                                    fo:inline($config, ., ("tei-supplied3", css:map-rend-to-class(.)), .)
                                else
                                    if (@reason='omitted') then
                                        fo:inline($config, ., ("tei-supplied4", css:map-rend-to-class(.)), .)
                                    else
                                        fo:inline($config, ., ("tei-supplied5", css:map-rend-to-class(.)), .)
                    case element(milestone) return
                        fo:inline($config, ., ("tei-milestone", css:map-rend-to-class(.)), .)
                    case element(ptr) return
                        if (parent::notatedMusic) then
                            (: No function found for behavior: webcomponent :)
                            $config?apply($config, ./node())
                        else
                            $config?apply($config, ./node())
                    case element(label) return
                        fo:inline($config, ., ("tei-label", css:map-rend-to-class(.)), .)
                    case element(signed) return
                        if (parent::closer) then
                            fo:block($config, ., ("tei-signed1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-signed2", css:map-rend-to-class(.)), .)
                    case element(pb) return
                        if ($parameters?view='edition') then
                            fo:omit($config, ., ("tei-pb1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?view='L1780' and not(contains(@edRef, '#L1780'))) then
                                fo:omit($config, ., ("tei-pb2", css:map-rend-to-class(.)), .)
                            else
                                if ($parameters?view='N3761' and not(contains(@edRef, '#N3761'))) then
                                    fo:omit($config, ., ("tei-pb3", css:map-rend-to-class(.)), .)
                                else
                                    fo:break($config, ., css:get-rendition(., ("tei-pb4", css:map-rend-to-class(.))), ., 'page', (concat(if(@n) then concat(@n,' ') else '', if(@facs) then concat('@',@facs) else '')))
                    case element(pc) return
                        fo:inline($config, ., ("tei-pc", css:map-rend-to-class(.)), .)
                    case element(anchor) return
                        fo:anchor($config, ., ("tei-anchor", css:map-rend-to-class(.)), ., @xml:id)
                    case element(TEI) return
                        fo:document($config, ., ("tei-TEI", css:map-rend-to-class(.)), .)
                    case element(formula) return
                        if (@rendition='simple:display') then
                            fo:block($config, ., ("tei-formula1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-formula2", css:map-rend-to-class(.)), .)
                    case element(choice) return
                        if (sic and corr) then
                            fo:alternate($config, ., ("tei-choice4", css:map-rend-to-class(.)), ., corr[1], sic[1])
                        else
                            if (abbr and expan) then
                                fo:alternate($config, ., ("tei-choice5", css:map-rend-to-class(.)), ., expan[1], abbr[1])
                            else
                                if (orig and reg) then
                                    fo:alternate($config, ., ("tei-choice6", css:map-rend-to-class(.)), ., reg[1], orig[1])
                                else
                                    $config?apply($config, ./node())
                    case element(hi) return
                        if (@rendition) then
                            fo:inline($config, ., css:get-rendition(., ("tei-hi1", css:map-rend-to-class(.))), .)
                        else
                            if (not(@rendition)) then
                                fo:inline($config, ., ("tei-hi2", css:map-rend-to-class(.)), .)
                            else
                                $config?apply($config, ./node())
                    case element(code) return
                        fo:inline($config, ., ("tei-code", css:map-rend-to-class(.)), .)
                    case element(note) return
                        if (@type='bioSummary') then
                            fo:block($config, ., ("tei-note1", css:map-rend-to-class(.)), .)
                        else
                            if (@type='summary') then
                                fo:inline($config, ., ("tei-note2", css:map-rend-to-class(.)), .)
                            else
                                if (parent::person) then
                                    fo:inline($config, ., ("tei-note3", css:map-rend-to-class(.)), .)
                                else
                                    fo:note($config, ., ("tei-note4", css:map-rend-to-class(.)), ., @place, @n)
                    case element(dateline) return
                        fo:block($config, ., ("tei-dateline", css:map-rend-to-class(.)), .)
                    case element(back) return
                        fo:block($config, ., ("tei-back", css:map-rend-to-class(.)), .)
                    case element(del) return
                        fo:inline($config, ., ("tei-del", css:map-rend-to-class(.)), .)
                    case element(trailer) return
                        fo:block($config, ., ("tei-trailer", css:map-rend-to-class(.)), .)
                    case element(titlePart) return
                        fo:block($config, ., css:get-rendition(., ("tei-titlePart", css:map-rend-to-class(.))), .)
                    case element(ab) return
                        fo:paragraph($config, ., ("tei-ab", css:map-rend-to-class(.)), .)
                    case element(revisionDesc) return
                        fo:omit($config, ., ("tei-revisionDesc", css:map-rend-to-class(.)), .)
                    case element(am) return
                        fo:inline($config, ., ("tei-am", css:map-rend-to-class(.)), .)
                    case element(subst) return
                        fo:inline($config, ., ("tei-subst", css:map-rend-to-class(.)), .)
                    case element(roleDesc) return
                        fo:block($config, ., ("tei-roleDesc", css:map-rend-to-class(.)), .)
                    case element(orig) return
                        fo:inline($config, ., ("tei-orig", css:map-rend-to-class(.)), .)
                    case element(opener) return
                        fo:block($config, ., ("tei-opener", css:map-rend-to-class(.)), .)
                    case element(speaker) return
                        fo:block($config, ., ("tei-speaker", css:map-rend-to-class(.)), .)
                    case element(imprimatur) return
                        fo:block($config, ., ("tei-imprimatur", css:map-rend-to-class(.)), .)
                    case element(publisher) return
                        if (ancestor::teiHeader) then
                            (: Omit if located in teiHeader. :)
                            fo:omit($config, ., ("tei-publisher", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(figDesc) return
                        fo:inline($config, ., ("tei-figDesc", css:map-rend-to-class(.)), .)
                    case element(rs) return
                        fo:inline($config, ., ("tei-rs", css:map-rend-to-class(.)), .)
                    case element(foreign) return
                        fo:inline($config, ., ("tei-foreign", css:map-rend-to-class(.)), .)
                    case element(fileDesc) return
                        if ($parameters?header='short') then
                            (
                                fo:block($config, ., ("tei-fileDesc1", "header-short", css:map-rend-to-class(.)), titleStmt),
                                fo:block($config, ., ("tei-fileDesc2", "header-short", css:map-rend-to-class(.)), editionStmt),
                                fo:block($config, ., ("tei-fileDesc3", "header-short", css:map-rend-to-class(.)), publicationStmt)
                            )

                        else
                            fo:title($config, ., ("tei-fileDesc4", css:map-rend-to-class(.)), titleStmt)
                    case element(notatedMusic) return
                        fo:figure($config, ., ("tei-notatedMusic", css:map-rend-to-class(.)), ptr, label)
                    case element(seg) return
                        fo:inline($config, ., css:get-rendition(., ("tei-seg", css:map-rend-to-class(.))), .)
                    case element(profileDesc) return
                        fo:omit($config, ., ("tei-profileDesc", css:map-rend-to-class(.)), .)
                    case element(email) return
                        fo:inline($config, ., ("tei-email", css:map-rend-to-class(.)), .)
                    case element(text) return
                        fo:body($config, ., ("tei-text", css:map-rend-to-class(.)), .)
                    case element(floatingText) return
                        fo:block($config, ., ("tei-floatingText", css:map-rend-to-class(.)), .)
                    case element(sp) return
                        fo:block($config, ., ("tei-sp", css:map-rend-to-class(.)), .)
                    case element(abbr) return
                        fo:inline($config, ., ("tei-abbr", css:map-rend-to-class(.)), .)
                    case element(table) return
                        fo:table($config, ., ("tei-table", css:map-rend-to-class(.)), .)
                    case element(cb) return
                        fo:break($config, ., ("tei-cb", css:map-rend-to-class(.)), ., 'column', @n)
                    case element(group) return
                        fo:block($config, ., ("tei-group", css:map-rend-to-class(.)), .)
                    case element(licence) return
                        fo:omit($config, ., ("tei-licence2", css:map-rend-to-class(.)), .)
                    case element(editor) return
                        if (ancestor::teiHeader) then
                            fo:omit($config, ., ("tei-editor1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-editor2", css:map-rend-to-class(.)), .)
                    case element(c) return
                        fo:inline($config, ., ("tei-c", css:map-rend-to-class(.)), .)
                    case element(listBibl) return
                        if (bibl) then
                            fo:list($config, ., ("tei-listBibl1", css:map-rend-to-class(.)), bibl, ())
                        else
                            fo:block($config, ., ("tei-listBibl2", css:map-rend-to-class(.)), .)
                    case element(address) return
                        fo:inline($config, ., ("tei-address", css:map-rend-to-class(.)), .)
                    case element(g) return
                        if (not(text())) then
                            fo:glyph($config, ., ("tei-g1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-g2", css:map-rend-to-class(.)), .)
                    case element(author) return
                        if (parent::titleStmt) then
                            (: Wird in der Indexliste nicht angezeigt :)
                            fo:omit($config, ., ("tei-author1", css:map-rend-to-class(.)), .)
                        else
                            if (ancestor::teiHeader) then
                                fo:block($config, ., ("tei-author2", css:map-rend-to-class(.)), .)
                            else
                                fo:inline($config, ., ("tei-author3", css:map-rend-to-class(.)), .)
                    case element(castList) return
                        if (child::*) then
                            fo:list($config, ., css:get-rendition(., ("tei-castList", css:map-rend-to-class(.))), castItem, ())
                        else
                            $config?apply($config, ./node())
                    case element(l) return
                        fo:block($config, ., css:get-rendition(., ("tei-l", css:map-rend-to-class(.))), .)
                    case element(closer) return
                        fo:block($config, ., ("tei-closer", css:map-rend-to-class(.)), .)
                    case element(rhyme) return
                        fo:inline($config, ., ("tei-rhyme", css:map-rend-to-class(.)), .)
                    case element(list) return
                        if (@rendition) then
                            fo:list($config, ., css:get-rendition(., ("tei-list1", css:map-rend-to-class(.))), item, ())
                        else
                            if (not(@rendition)) then
                                fo:list($config, ., ("tei-list2", css:map-rend-to-class(.)), item, ())
                            else
                                $config?apply($config, ./node())
                    case element(p) return
                        fo:paragraph($config, ., css:get-rendition(., ("tei-p", css:map-rend-to-class(.))), .)
                    case element(measure) return
                        fo:inline($config, ., ("tei-measure", css:map-rend-to-class(.)), .)
                    case element(q) return
                        if (l) then
                            fo:block($config, ., css:get-rendition(., ("tei-q1", css:map-rend-to-class(.))), .)
                        else
                            if (ancestor::p or ancestor::cell) then
                                fo:inline($config, ., css:get-rendition(., ("tei-q2", css:map-rend-to-class(.))), .)
                            else
                                fo:block($config, ., css:get-rendition(., ("tei-q3", css:map-rend-to-class(.))), .)
                    case element(actor) return
                        fo:inline($config, ., ("tei-actor", css:map-rend-to-class(.)), .)
                    case element(epigraph) return
                        fo:block($config, ., ("tei-epigraph", css:map-rend-to-class(.)), .)
                    case element(s) return
                        fo:inline($config, ., ("tei-s", css:map-rend-to-class(.)), .)
                    case element(docTitle) return
                        fo:block($config, ., css:get-rendition(., ("tei-docTitle", css:map-rend-to-class(.))), .)
                    case element(lb) return
                        fo:break($config, ., css:get-rendition(., ("tei-lb", css:map-rend-to-class(.))), ., 'line', @n)
                    case element(w) return
                        fo:inline($config, ., ("tei-w", css:map-rend-to-class(.)), .)
                    case element(stage) return
                        fo:block($config, ., ("tei-stage", css:map-rend-to-class(.)), .)
                    case element(titlePage) return
                        fo:block($config, ., css:get-rendition(., ("tei-titlePage", css:map-rend-to-class(.))), .)
                    case element(name) return
                        fo:inline($config, ., ("tei-name", css:map-rend-to-class(.)), .)
                    case element(front) return
                        fo:block($config, ., ("tei-front", css:map-rend-to-class(.)), .)
                    case element(lg) return
                        fo:block($config, ., ("tei-lg", css:map-rend-to-class(.)), .)
                    case element(publicationStmt) return
                        fo:omit($config, ., ("tei-publicationStmt2", css:map-rend-to-class(.)), .)
                    case element(biblScope) return
                        fo:inline($config, ., ("tei-biblScope", css:map-rend-to-class(.)), .)
                    case element(desc) return
                        fo:inline($config, ., ("tei-desc", css:map-rend-to-class(.)), .)
                    case element(role) return
                        fo:block($config, ., ("tei-role", css:map-rend-to-class(.)), .)
                    case element(docEdition) return
                        fo:inline($config, ., ("tei-docEdition", css:map-rend-to-class(.)), .)
                    case element(num) return
                        fo:inline($config, ., ("tei-num", css:map-rend-to-class(.)), .)
                    case element(docImprint) return
                        fo:inline($config, ., ("tei-docImprint", css:map-rend-to-class(.)), .)
                    case element(postscript) return
                        fo:block($config, ., ("tei-postscript", css:map-rend-to-class(.)), .)
                    case element(edition) return
                        if (ancestor::teiHeader) then
                            fo:block($config, ., ("tei-edition", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(cell) return
                        (: Insert table cell. :)
                        fo:cell($config, ., ("tei-cell", css:map-rend-to-class(.)), ., ())
                    case element(relatedItem) return
                        fo:inline($config, ., ("tei-relatedItem", css:map-rend-to-class(.)), .)
                    case element(div) return
                        if (parent::body or parent::front or parent::back) then
                            fo:section($config, ., ("tei-div1", css:map-rend-to-class(.)), .)
                        else
                            fo:block($config, ., ("tei-div2", css:map-rend-to-class(.)), .)
                    case element(graphic) return
                        fo:graphic($config, ., ("tei-graphic", css:map-rend-to-class(.)), ., @url, @width, @height, @scale, desc)
                    case element(reg) return
                        fo:inline($config, ., ("tei-reg", css:map-rend-to-class(.)), .)
                    case element(ref) return
                        if (not(@target)) then
                            fo:inline($config, ., ("tei-ref1", css:map-rend-to-class(.)), .)
                        else
                            if (not(node())) then
                                fo:link($config, ., ("tei-ref2", css:map-rend-to-class(.)), @target, @target, map {})
                            else
                                fo:link($config, ., ("tei-ref3", css:map-rend-to-class(.)), ., @target, map {})
                    case element(pubPlace) return
                        if (ancestor::teiHeader) then
                            (: Omit if located in teiHeader. :)
                            fo:omit($config, ., ("tei-pubPlace", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(add) return
                        fo:inline($config, ., ("tei-add", css:map-rend-to-class(.)), .)
                    case element(docDate) return
                        fo:inline($config, ., ("tei-docDate", css:map-rend-to-class(.)), .)
                    case element(head) return
                        if (parent::div[@type="verse"]) then
                            fo:block($config, ., ("tei-head1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?header='short') then
                                fo:inline($config, ., ("tei-head2", css:map-rend-to-class(.)), replace(string-join(.//text()[not(parent::ref)]), '^(.*?)[^\w]*$', '$1'))
                            else
                                if (parent::figure) then
                                    fo:block($config, ., ("tei-head3", css:map-rend-to-class(.)), .)
                                else
                                    if (parent::table) then
                                        fo:block($config, ., ("tei-head4", css:map-rend-to-class(.)), .)
                                    else
                                        if (parent::lg) then
                                            fo:block($config, ., ("tei-head5", css:map-rend-to-class(.)), .)
                                        else
                                            if (parent::list) then
                                                fo:block($config, ., ("tei-head6", css:map-rend-to-class(.)), .)
                                            else
                                                if (parent::div) then
                                                    fo:heading($config, ., ("tei-head7", css:map-rend-to-class(.)), ., count(ancestor::div))
                                                else
                                                    fo:block($config, ., ("tei-head8", css:map-rend-to-class(.)), .)
                    case element(ex) return
                        fo:inline($config, ., ("tei-ex", css:map-rend-to-class(.)), .)
                    case element(castGroup) return
                        if (child::*) then
                            (: Insert list. :)
                            fo:list($config, ., ("tei-castGroup", css:map-rend-to-class(.)), castItem|castGroup, ())
                        else
                            $config?apply($config, ./node())
                    case element(time) return
                        fo:inline($config, ., ("tei-time", css:map-rend-to-class(.)), .)
                    case element(bibl) return
                        if (parent::person) then
                            let $params := 
                                map {
                                    "uri": @path,
                                    "content": .
                                }

                                                        let $content := 
                                model:template-bibl($config, ., $params)
                            return
                                                        fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-bibl1", css:map-rend-to-class(.)), $content)
                        else
                            if (parent::listBibl) then
                                fo:listItem($config, ., ("tei-bibl2", css:map-rend-to-class(.)), ., ())
                            else
                                fo:inline($config, ., ("tei-bibl3", css:map-rend-to-class(.)), .)
                    case element(salute) return
                        if (parent::closer) then
                            fo:inline($config, ., ("tei-salute1", css:map-rend-to-class(.)), .)
                        else
                            fo:block($config, ., ("tei-salute2", css:map-rend-to-class(.)), .)
                    case element(unclear) return
                        fo:inline($config, ., ("tei-unclear", css:map-rend-to-class(.)), .)
                    case element(argument) return
                        fo:block($config, ., ("tei-argument", css:map-rend-to-class(.)), .)
                    case element(date) return
                        if (text()) then
                            fo:inline($config, ., ("tei-date1", css:map-rend-to-class(.)), .)
                        else
                            if (@when and not(text())) then
                                fo:inline($config, ., ("tei-date2", css:map-rend-to-class(.)), @when)
                            else
                                if (text()) then
                                    fo:inline($config, ., ("tei-date4", css:map-rend-to-class(.)), .)
                                else
                                    $config?apply($config, ./node())
                    case element(title) return
                        if (@level="s") then
                            fo:omit($config, ., ("tei-title1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?header='short') then
                                fo:heading($config, ., ("tei-title3", css:map-rend-to-class(.)), ., 5)
                            else
                                if (parent::titleStmt/parent::fileDesc) then
                                    (
                                        if (preceding-sibling::title) then
                                            fo:omit($config, ., ("tei-title4", css:map-rend-to-class(.)), ' — ')
                                        else
                                            (),
                                        fo:inline($config, ., ("tei-title5", css:map-rend-to-class(.)), .)
                                    )

                                else
                                    if (not(@level) and parent::bibl) then
                                        fo:inline($config, ., ("tei-title6", css:map-rend-to-class(.)), .)
                                    else
                                        if (@level='m' or not(@level)) then
                                            (
                                                fo:inline($config, ., ("tei-title7", css:map-rend-to-class(.)), .),
                                                if (ancestor::biblFull) then
                                                    fo:text($config, ., ("tei-title8", css:map-rend-to-class(.)), ', ')
                                                else
                                                    ()
                                            )

                                        else
                                            if (@level='s' or @level='j') then
                                                (
                                                    fo:omit($config, ., ("tei-title9", css:map-rend-to-class(.)), .),
                                                    if (following-sibling::* and     (  ancestor::biblFull)) then
                                                        fo:omit($config, ., ("tei-title10", css:map-rend-to-class(.)), ', ')
                                                    else
                                                        ()
                                                )

                                            else
                                                if (@level='u' or @level='a') then
                                                    (
                                                        fo:inline($config, ., ("tei-title11", css:map-rend-to-class(.)), .),
                                                        if (following-sibling::* and     (    ancestor::biblFull)) then
                                                            fo:text($config, ., ("tei-title12", css:map-rend-to-class(.)), '. ')
                                                        else
                                                            ()
                                                    )

                                                else
                                                    (: More than one model without predicate found for ident title. Choosing first one. :)
                                                    fo:heading($config, ., ("tei-title2", css:map-rend-to-class(.)), ., 1)
                    case element(corr) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            (: simple inline, if in parent choice. :)
                            fo:inline($config, ., ("tei-corr1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-corr2", css:map-rend-to-class(.)), .)
                    case element(cit) return
                        if (child::quote and child::bibl) then
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
                                model:template-cit($config, ., $params)
                            return
                                                        fo:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-cit", "linkRef", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(titleStmt) return
                        fo:heading($config, ., ("tei-titleStmt2", css:map-rend-to-class(.)), ., ())
                    case element(sic) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            fo:inline($config, ., ("tei-sic1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-sic2", css:map-rend-to-class(.)), .)
                    case element(expan) return
                        fo:inline($config, ., ("tei-expan", css:map-rend-to-class(.)), .)
                    case element(body) return
                        (
                            fo:index($config, ., ("tei-body1", css:map-rend-to-class(.)), ., 'toc'),
                            fo:block($config, ., ("tei-body2", css:map-rend-to-class(.)), .)
                        )

                    case element(spGrp) return
                        fo:block($config, ., ("tei-spGrp", css:map-rend-to-class(.)), .)
                    case element(fw) return
                        if (ancestor::p or ancestor::ab) then
                            fo:inline($config, ., ("tei-fw1", css:map-rend-to-class(.)), .)
                        else
                            fo:block($config, ., ("tei-fw2", css:map-rend-to-class(.)), .)
                    case element(encodingDesc) return
                        fo:omit($config, ., ("tei-encodingDesc", css:map-rend-to-class(.)), .)
                    case element(addrLine) return
                        fo:inline($config, ., ("tei-addrLine", css:map-rend-to-class(.)), .)
                    case element(gap) return
                        if (desc) then
                            fo:inline($config, ., ("tei-gap1", css:map-rend-to-class(.)), .)
                        else
                            if (@extent) then
                                fo:inline($config, ., ("tei-gap2", css:map-rend-to-class(.)), @extent)
                            else
                                fo:inline($config, ., ("tei-gap3", css:map-rend-to-class(.)), .)
                    case element(quote) return
                        if (ancestor::p) then
                            (: If it is inside a paragraph then it is inline, otherwise it is block level :)
                            fo:inline($config, ., css:get-rendition(., ("tei-quote1", "quote", css:map-rend-to-class(.))), .)
                        else
                            (: If it is inside a paragraph then it is inline, otherwise it is block level :)
                            fo:block($config, ., css:get-rendition(., ("tei-quote2", css:map-rend-to-class(.))), .)
                    case element(row) return
                        if (@role='label') then
                            fo:row($config, ., ("tei-row1", css:map-rend-to-class(.)), .)
                        else
                            (: Insert table row. :)
                            fo:row($config, ., ("tei-row2", css:map-rend-to-class(.)), .)
                    case element(docAuthor) return
                        fo:inline($config, ., ("tei-docAuthor", css:map-rend-to-class(.)), .)
                    case element(byline) return
                        fo:block($config, ., ("tei-byline", css:map-rend-to-class(.)), .)
                    case element(app) return
                        if ($parameters?view='edition') then
                            (: Work in progress to display more than one rdg :)
                            let $params := 
                                map {
                                    "content": lem,
                                    "persistent": true(),
                                    "name": 'pb-popover',
                                    "alter": for $alt in rdg let $alttext := if (string(rdg) != '') then . else 'omitted' return $alt/(substring-after(@wit, '#')) || ']' || $alttext
                                }

                                                        let $content := 
                                model:template-app($config, ., $params)
                            return
                                                        fo:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-app1", css:map-rend-to-class(.)), $content)
                        else
                            if ($parameters?view='edition') then
                                (: Display textual variants as popover in edition view. At the moment I can only show the first variant, :)
                                let $params := 
                                    map {
                                        "content": lem,
                                        "alternate": if (string(rdg[1]) != '') then . else 'omitted',
                                        "persistent": true(),
                                        "name": 'pb-popover',
                                        "altLabel": rdg[1]/(substring-after(@wit, '#'))
                                    }

                                                                let $content := 
                                    model:template-app2($config, ., $params)
                                return
                                                                fo:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-app2", css:map-rend-to-class(.)), $content)
                            else
                                (: More than one model without predicate found for ident app. Choosing first one. :)
                                (: Trying to highlight textual variants across different views. :)
                                let $params := 
                                    map {
                                        "content": .,
                                        "key": generate-id()
                                    }

                                                                let $content := 
                                    model:template-app3($config, ., $params)
                                return
                                                                fo:inline(map:merge(($config, map:entry("template", true()))), ., ("tei-app3", css:map-rend-to-class(.)), $content)
                    case element(lem) return
                        if ($parameters?view='max' and not(contains(@wit, '#max'))) then
                            fo:omit($config, ., ("tei-lem1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?view='N3761' and not(contains(@wit, '#N3761'))) then
                                (: N3761 :)
                                fo:omit($config, ., ("tei-lem2", css:map-rend-to-class(.)), .)
                            else
                                if ($parameters?view='L1780' and not(contains(@wit, '#L1780'))) then
                                    (: L1780 :)
                                    fo:omit($config, ., ("tei-lem3", css:map-rend-to-class(.)), .)
                                else
                                    $config?apply($config, ./node())
                    case element(birth) return
                        fo:inline($config, ., ("tei-birth", css:map-rend-to-class(.)), .)
                    case element(death) return
                        fo:inline($config, ., ("tei-death", css:map-rend-to-class(.)), .)
                    case element(idno) return
                        if (@source='isni') then
                            let $params := 
                                map {
                                    "uri": 'https://isni.org/isni/' ||  replace(string(), ' ', '') || '',
                                    "content": .
                                }

                                                        let $content := 
                                model:template-idno($config, ., $params)
                            return
                                                        fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno1", css:map-rend-to-class(.)), $content)
                        else
                            if (@source='gnd') then
                                let $params := 
                                    map {
                                        "uri": 'https://d-nb.info/gnd/' || string() || '/',
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-idno2($config, ., $params)
                                return
                                                                fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno2", css:map-rend-to-class(.)), $content)
                            else
                                if (@source='jE') then
                                    let $params := 
                                        map {
                                            "uri": (.),
                                            "content": .
                                        }

                                                                        let $content := 
                                        model:template-idno3($config, ., $params)
                                    return
                                                                        fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno3", css:map-rend-to-class(.)), $content)
                                else
                                    if (@source='treccani') then
                                        let $params := 
                                            map {
                                                "uri": (.),
                                                "content": .
                                            }

                                                                                let $content := 
                                            model:template-idno4($config, ., $params)
                                        return
                                                                                fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno4", css:map-rend-to-class(.)), $content)
                                    else
                                        if (@source='viaf') then
                                            let $params := 
                                                map {
                                                    "uri": 'http://viaf.org/viaf/' || replace(string(), ' ', '') || '/',
                                                    "content": .
                                                }

                                                                                        let $content := 
                                                model:template-idno5($config, ., $params)
                                            return
                                                                                        fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno5", css:map-rend-to-class(.)), $content)
                                        else
                                            if (@source='wikidata') then
                                                let $params := 
                                                    map {
                                                        "uri": 'https://www.wikidata.org/wiki/' || string() || '',
                                                        "content": .
                                                    }

                                                                                                let $content := 
                                                    model:template-idno6($config, ., $params)
                                                return
                                                                                                fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-idno6", css:map-rend-to-class(.)), $content)
                                            else
                                                if (parent::person) then
                                                    fo:listItem($config, ., ("tei-idno7", css:map-rend-to-class(.)), ., ())
                                                else
                                                    $config?apply($config, ./node())
                    case element(persName) return
                        if (@type='main' and @xml:lang='he') then
                            fo:block($config, ., ("tei-persName1", css:map-rend-to-class(.)), .)
                        else
                            if (@type='main' and @xml:lang='en' and $parameters?view='biogram') then
                                fo:block($config, ., ("tei-persName2", css:map-rend-to-class(.)), .)
                            else
                                if (parent::person and @type='he') then
                                    fo:omit($config, ., ("tei-persName4", css:map-rend-to-class(.)), .)
                                else
                                    if (parent::person) then
                                        fo:inline($config, ., ("tei-persName5", css:map-rend-to-class(.)), .)
                                    else
                                        $config?apply($config, ./node())
                    case element(person) return
                        if ($parameters?view='biogram') then
                            (
                                (: Letters Sent Head :)
                                fo:heading($config, ., ("tei-person1", css:map-rend-to-class(.)), 'Letters Sent', 2),
                                (: Letters Sent Content :)
                                fo:block($config, ., ("tei-person2", css:map-rend-to-class(.)), bibl),
                                (: Letters Written Head :)
                                fo:heading($config, ., ("tei-person3", css:map-rend-to-class(.)), 'Letters Written', 2),
                                (: Letters Written Content :)
                                fo:block($config, ., ("tei-person4", css:map-rend-to-class(.)), let $pers-ref := @xml:id    for $letter in collection('/db/apps/zacutos-letters/data/letters')    let $letter-file := $letter/TEI/@xml:id    let $letter-title := $letter/TEI/teiHeader/fileDesc/titleStmt/title[1]    where $pers-ref = $letter//teiHeader/profileDesc/correspDesc/correspAction[@type = 'sent']/persName/@key      return           ``[ <li><pb-link path="/db/apps/zacutos-letters/data/letters/`{ $letter-file }`.xml">`{ $letter-title }`</pb-link></li>   ]``),
                                fo:heading($config, ., ("tei-person5", css:map-rend-to-class(.)), 'Names', 2),
                                fo:block($config, ., ("tei-person6", css:map-rend-to-class(.)), persName),
                                fo:heading($config, ., ("tei-person7", css:map-rend-to-class(.)), 'Biography', 2),
                                fo:block($config, ., ("tei-person8", css:map-rend-to-class(.)), note[@type="bioSummary"]),
                                fo:heading($config, ., ("tei-person9", css:map-rend-to-class(.)), 'External References', 2),
                                fo:block($config, ., ("tei-person10", css:map-rend-to-class(.)), idno)
                            )

                        else
                            if (parent::listPersons) then
                                fo:inline($config, ., ("tei-person11", css:map-rend-to-class(.)), .)
                            else
                                (
                                    fo:block($config, ., ("tei-person12", css:map-rend-to-class(.)), persName[@xml:lang="en" and @type="main"] string-join((birth/date, death/date), "–"))
                                )

                    case element(placeName) return
                        fo:inline($config, ., ("tei-placeName", "placeName", css:map-rend-to-class(.)), .)
                    case element(sex) return
                        fo:inline($config, ., ("tei-sex", css:map-rend-to-class(.)), .)
                    case element(workName) return
                        fo:inline($config, ., ("tei-workName", "workName", css:map-rend-to-class(.)), .)
                    case element(bold) return
                        fo:inline($config, ., ("tei-bold", css:map-rend-to-class(.)), .)
                    case element(rdg) return
                        if ($parameters?view='edition') then
                            (: edition view – deactivated so display popover variants in edition view :)
                            fo:omit($config, ., ("tei-rdg1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?view='max' and not(contains(@wit, '#max'))) then
                                fo:omit($config, ., ("tei-rdg2", css:map-rend-to-class(.)), .)
                            else
                                if ($parameters?view='N3761' and not(contains(@wit, '#N3761'))) then
                                    (: N3761 :)
                                    fo:omit($config, ., ("tei-rdg3", css:map-rend-to-class(.)), .)
                                else
                                    if ($parameters?view='L1780' and not(contains(@wit, '#L1780'))) then
                                        (: L1780 :)
                                        fo:omit($config, ., ("tei-rdg4", css:map-rend-to-class(.)), .)
                                    else
                                        fo:inline($config, ., ("tei-rdg5", "rdg", css:map-rend-to-class(.)), .)
                    case element(availability) return
                        fo:omit($config, ., ("tei-availability", css:map-rend-to-class(.)), .)
                    case element() return
                        if (namespace-uri(.) = 'http://www.tei-c.org/ns/1.0') then
                            $config?apply($config, ./node())
                        else
                            .
                    case text() | xs:anyAtomicType return
                        fo:escapeChars(.)
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
                    fo:escapeChars(.)
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

