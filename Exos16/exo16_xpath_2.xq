(:exo_16_Xpath_q2 Compter les différents types de catégories disponibles dans le fichier :)
count(distinct-values( doc("dela-fr-public-u8.dic")/dico/entry/pos/@name)) 