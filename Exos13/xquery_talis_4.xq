(:exo_13_XQuery_Talis_q4 Sur les fichiers étiquetés avec Talismane. Construire une requête pourextraire les contenus textuels des « titre » et des « description » :)
for $art in collection("TALISMANE-3208")//p
where $art [@type='titre']
let $a := string-join($art/item/a[2]/text(), " ")
for $art in collection("TALISMANE-3208")//p
where $art [@type='description']
let $b := string-join($art/item/a[2]/text(), " ")
return ($a,$b)