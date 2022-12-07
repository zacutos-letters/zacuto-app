xquery version "3.1";

module namespace idx="http://teipublisher.com/index";

declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace dbk="http://docbook.org/ns/docbook";

declare variable $idx:app-root :=
    let $rawPath := system:get-module-load-path()
    return
        (: strip the xmldb: part :)
        if (starts-with($rawPath, "xmldb:exist://")) then
            if (starts-with($rawPath, "xmldb:exist://embedded-eXist-server")) then
                substring($rawPath, 36)
            else
                substring($rawPath, 15)
        else
            $rawPath
    ;

(:~
 : Helper function called from collection.xconf to create index fields and facets.
 : This module needs to be loaded before collection.xconf starts indexing documents
 : and therefore should reside in the root of the app.
 :)
declare function idx:get-metadata($root as element(), $field as xs:string) {
    let $header := $root/tei:teiHeader
    return
        switch ($field)
            case "title" return
                string-join((
                    $header//tei:msDesc/tei:head, $header//tei:titleStmt/tei:title[@type = 'main'],
                    $header//tei:titleStmt/tei:title,
                    $root/dbk:info/dbk:title
                ), " - ")
            case "correspondent" return (
                $header//tei:correspDesc/tei:correspAction/tei:persName
            )
            case "language" return
                head((
                    $header//tei:langUsage/tei:language/@ident,
                    $root/@xml:lang,
                    $header/@xml:lang
                ))
            case "date" return head((
                $header//tei:correspDesc/tei:correspAction/tei:date/@when,
                $header//tei:sourceDesc/(tei:bibl|tei:biblFull)/tei:publicationStmt/tei:date,
                $header//tei:sourceDesc/(tei:bibl|tei:biblFull)/tei:date/@when,
                $header//tei:fileDesc/tei:editionStmt/tei:edition/tei:date,
                $header//tei:publicationStmt/tei:date
            ))
            case "persMentioned" return head((
                $root//tei:p/tei:persName/@key
            ))
            case "place" return head((
                $header//tei:correspDesc/tei:correspAction/tei:settlement
            ))
            case "manuscript" return head((
                $header//tei:sourceDesc/tei:listWit/tei:witness/@xml:id
            ))
            
            case "institution" return head((
                $header//tei:msIdentifier/tei:institution
            ))
            case "topics" return head((
                $header//tei:term/tei:desc,
                $header//tei:term/tei:desc/tei:term/tei:desc,
                $header//tei:term/tei:desc/tei:term/tei:desc/tei:term/tei:desc
            ))
            case "genre" return (
                idx:get-genre($header),
                $root/dbk:info/dbk:keywordset[@vocab="#genre"]/dbk:keyword
            )
            case "life" return (
                idx:get-life($header)
            )
            case "halakha" return (
                idx:get-halakha($header)
            )
            case "liturgy" return (
                idx:get-liturgy($header)
            )
            case "kabbalah" return (
                idx:get-kabbalah($header)
            )
            default return
                ()
};

declare function idx:get-genre($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#topics"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};

declare function idx:get-life($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#life"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};

declare function idx:get-halakha($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#halakha"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};

declare function idx:get-liturgy($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#liturgy"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};

declare function idx:get-kabbalah($header as element()?) {
    for $target in $header//tei:textClass/tei:catRef[@scheme="#kabbalah"]/@target
    let $category := id(substring($target, 2), doc($idx:app-root || "/data/taxonomy.xml"))
    return
        $category/ancestor-or-self::tei:category[parent::tei:category]/tei:catDesc
};
