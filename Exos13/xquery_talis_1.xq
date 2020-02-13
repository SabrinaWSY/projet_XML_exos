(:exo_13_XQuery_Talis_q1 Sur les fichiers étiquetés avec Talismane. Construire une requête pour compter le nombre de titre, le nombre de description:)
for $art in collection("TALISMANE-3208")//basetalismane
let $count := count($art/file/titre)
let $count2 := count($art/file/description)
let $nb_t := <nb_titre>{$count}</nb_titre>
let $nb_d := <nb_description>{$count2}</nb_description>
return ($nb_t, " ", $nb_d)