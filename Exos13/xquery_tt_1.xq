(:exo_13_XQuery_tt_q1 Sur les fichiers étiquetés avec tree-tagger. Construire une requête pour pour extraire les contenus textuels des « titre » :)
for $item in collection("3208-2017-v2")//item
for $art in $item/titre/article
return string-join($art/element/data[3]/text()," ")