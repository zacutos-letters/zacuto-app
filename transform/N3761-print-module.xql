module namespace pml='http://www.tei-c.org/pm/models/N3761/fo/module';

import module namespace m='http://www.tei-c.org/pm/models/N3761/fo' at '/db/apps/zacutos-letters/transform/N3761-print.xql';

(: Generated library module to be directly imported into code which
 : needs to transform TEI nodes using the ODD this module is based on.
 :)
declare function pml:transform($xml as node()*, $parameters as map(*)?) {

   let $options := map {
       "styles": ["transform/N3761.css"],
       "collection": "/db/apps/zacutos-letters/transform",
       "parameters": if (exists($parameters)) then $parameters else map {}
   }
   return m:transform($options, $xml)
};