import module namespace m='http://www.tei-c.org/pm/models/zacuto-sources/fo' at '/db/apps/zacutos-letters/transform/zacuto-sources-print.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/zacuto-sources.css"],
    "collection": "/db/apps/zacutos-letters/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)