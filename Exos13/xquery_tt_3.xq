(:exo_13_XQuery_tt_q3 Sur les fichiers étiquetés avec tree-tagger. Construire une requête pour pour extraire les contenus textuels des « titre » et des « description » :)
for $item in collection("3208-2017-v2")//item
for $art in $item/titre/article
for $art2 in $item/description/article
let $a := string-join($art/element/data[3]/text(), " ")
let $b := string-join($art2/element/data[3]/text(), " ")
return ($a,$b)
