import module namespace m='http://www.tei-c.org/pm/models/L1780/latex' at '/db/apps/zacutos-letters/transform/L1780-latex.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/L1780.css"],
    "collection": "/db/apps/zacutos-letters/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)