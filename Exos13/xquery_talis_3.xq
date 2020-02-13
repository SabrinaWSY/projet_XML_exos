(:exo_13_XQuery_Talis_q3 Sur les fichiers étiquetés avec Talismane. Construire une requête pourextraire les contenus textuels des « description » :)
for $art in collection("TALISMANE-3208")//p
where $art [@type='description']
return string-join($art/item/a[2]/text(), " ")