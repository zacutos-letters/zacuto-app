import module namespace m='http://www.tei-c.org/pm/models/N3761/fo' at '/db/apps/zacutos-letters/transform/N3761-print.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/N3761.css"],
    "collection": "/db/apps/zacutos-letters/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)