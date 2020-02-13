(:exo_13_XQuery_Talis_q5 Sur les fichiers étiquetés avec Talismane. Construire une requête pour extraire les patrons morpho-syntaxiques NOM PRP NOM:)
for $art in collection("TALISMANE-3208")//p
for $elt in $art/item
let $nextElt := $elt/following-sibling::item[1]
let $nextElt2 := $elt/following-sibling::item[2]
where $elt/a[4] = "NC" and $nextElt/a[4] = "P" and $nextElt2/a[4] = "NC"
return concat($elt/a[2]/text(),' ',$nextElt/a[2]/text(), ' ', $nextElt2/a[2]/text())
