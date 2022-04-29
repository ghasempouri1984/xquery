xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

declare function local:howManyADD($node as node()) 
    {
    count($node//tei:add)
    };

let $ourfile := doc("file:/Drive:/Frankenstein-v1c5-transcription-1.xml")
    return  local:howManyADD($ourfile)
