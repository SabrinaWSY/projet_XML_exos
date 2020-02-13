(:exo_13_XQuery_Talis_q5 Sur les fichiers étiquetés avec treetagger. Construire une requête pour extraire les patrons morpho-syntaxiques NOM ADJ:)
for $art in collection("TALISMANE-3208")//p
for $elt in $art/item
let $nextElt := $elt/following-sibling::item[1]
where $elt/a[4] = "NC" and $nextElt/a[4] = "ADJ"
return concat($elt/a[2]/text(),' ',$nextElt/a[2]/text())
