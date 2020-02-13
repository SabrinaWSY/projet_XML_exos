(:exo_13_XQuery_Talis_q7 Sur les fichiers étiquetés avec Talismane. Construire une requête pour extraire les items portant une relation de dépendance syntaxique de type OBJ :)
for $art in collection("TALISMANE-3208")//p
for $elt in $art/item
where $elt/a[8] = "obj" 
return $elt