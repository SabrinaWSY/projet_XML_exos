(:exo_13_XQuery_TREETAGGER_q4 Sur les fichiers étiquetés avec treetagger. Construire une requête pour extraire les patrons morpho-syntaxiques NOM ADJ:)
for $art in collection("3208-2017-v2")//article
for $elt in $art/element
let $nextElt := $elt/following-sibling::element[1]
where $elt/data[1] = "NOM" and $nextElt/data[1] = "ADJ"
return concat($elt/data[3]/text(),' ',$nextElt/data[3]/text())
