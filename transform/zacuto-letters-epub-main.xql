import module namespace m='http://www.tei-c.org/pm/models/zacuto-letters/epub' at '/db/apps/zacutos-letters/transform/zacuto-letters-epub.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/zacuto-letters.css"],
    "collection": "/db/apps/zacutos-letters/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)