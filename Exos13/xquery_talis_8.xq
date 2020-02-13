(:exo_13_XQuery_Talis_q8 Sur les fichiers étiquetés avec Talismane. Construire une requête pour extraire les items en relation de dépendance syntaxique de type SUB (on affichera les formes ou les lemmes connectés par cette relation) :)
for $art in collection("TALISMANE-3208")//p
for $elt in $art/item
where $elt/a[8] = "sub" 
let $num_depend := $elt/a[7]
let $mot_sub := $elt/a[2] 
for $item in $art/item
let $mot_depend := $item/a[2] where $item/a[1]= $num_depend
return <relation_sub>{$mot_sub, $mot_depend}</relation_sub>