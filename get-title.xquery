xquery version "3.0";

declare namespace tei="http://www.tei-c.org/ns/1.0";

declare function local:getTitle($resource as xs:string) as xs:string {
    string-join(doc($resource)//tei:titleStmt/tei:title)
};
   
let $title := local:getTitle("file:/D:/Frankenstein-v1c5-transcription-1.xml")
return $title