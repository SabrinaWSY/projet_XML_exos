(:exo_13_XQuery_TREETAGGER_q5 Sur les fichiers étiquetés avec treetagger. Construire une 
requête pour extraire les patrons morpho-syntaxiques NOM PREP NOM:)  
  for $art in collection("3208-2017-v2")//article
  for $elt in $art/element
  let $nextElt := $elt/following-sibling::element[1]
  let $nextElt2 := $elt/following-sibling::element[2]
  where contains($elt/data[1],"NOM") and contains($nextElt/data[1],"PRP") and $nextElt2/data[1] = "NOM"
  return concat($elt/data[3]/text()," ",$nextElt/data[3]/text()," ",$nextElt2/data[3]/text())
