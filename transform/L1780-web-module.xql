module namespace pml='http://www.tei-c.org/pm/models/L1780/web/module';

import module namespace m='http://www.tei-c.org/pm/models/L1780/web' at '/db/apps/zacutos-letters/transform/L1780-web.xql';

(: Generated library module to be directly imported into code which
 : needs to transform TEI nodes using the ODD this module is based on.
 :)
declare function pml:transform($xml as node()*, $parameters as map(*)?) {

   let $options := map {
       "styles": ["transform/L1780.css"],
       "collection": "/db/apps/zacutos-letters/transform",
       "parameters": if (exists($parameters)) then $parameters else map {}
   }
   return m:transform($options, $xml)
};