(:exo_13_XQuery_tt_q2 Sur les fichiers étiquetés avec tree-tagger. Construire une requête pour pour extraire les contenus textuels des « description » :)
for $item in collection("3208-2017-v2")//item
for $art in $item/description/article
return string-join($art/element/data[3]/text()," ")