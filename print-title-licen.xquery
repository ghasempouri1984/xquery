xquery version "3.0";

declare namespace tei="http://www.tei-c.org/ns/1.0";



let $title := doc("file:/D:/Frankenstein-v1c5-transcription-1.xml")//tei:title
let $licence := doc("file:/D:/Frankenstein-v1c5-transcription-1.xml")//tei:licence
return <html>
        <head></head>
        <body>
        <h1>{data($title)}</h1>
        <p>{data($licence)}</p>
        </body>
       </html>
       