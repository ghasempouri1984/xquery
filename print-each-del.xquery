xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";

for $del in doc("file:/D:/Frankenstein-v1c5-transcription-1.xml")//tei:del
    where string-length($del/data()) > 1
    order by string-length($del/data())
    return if ($del/@type/data() = "overwritten")
        then <p class= "overwritten">{$del/data()}</p>
        else <p class="not-overwritten">{$del/data()}</p>
