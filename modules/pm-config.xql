
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";
import module namespace pm-zacuto-letters-web="http://www.tei-c.org/pm/models/zacuto-letters/web/module" at "../transform/zacuto-letters-web-module.xql";
import module namespace pm-zacuto-letters-print="http://www.tei-c.org/pm/models/zacuto-letters/fo/module" at "../transform/zacuto-letters-print-module.xql";
import module namespace pm-zacuto-letters-latex="http://www.tei-c.org/pm/models/zacuto-letters/latex/module" at "../transform/zacuto-letters-latex-module.xql";
import module namespace pm-zacuto-letters-epub="http://www.tei-c.org/pm/models/zacuto-letters/epub/module" at "../transform/zacuto-letters-epub-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "zacuto-letters.odd" return pm-zacuto-letters-web:transform($xml, $parameters)
    default return pm-zacuto-letters-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "zacuto-letters.odd" return pm-zacuto-letters-print:transform($xml, $parameters)
    default return pm-zacuto-letters-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "zacuto-letters.odd" return pm-zacuto-letters-latex:transform($xml, $parameters)
    default return pm-zacuto-letters-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "zacuto-letters.odd" return pm-zacuto-letters-epub:transform($xml, $parameters)
    default return pm-zacuto-letters-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    