(:exo_13_XQuery_Talis_q2 Sur les fichiers étiquetés avec Talismane. Construire une requête pour extraire les contenus textuels des « titre » :)
for $art in collection("TALISMANE-3208")//p
where $art [@type='titre']
return string-join($art/item/a[2]/text(), " ")
