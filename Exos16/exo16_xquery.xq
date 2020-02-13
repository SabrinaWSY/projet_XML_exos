(:exo_16_Xquery Compter le nombre de verbes, de noms etc. :)
for $x in distinct-values( doc("dela-fr-public-u8.dic")/dico/entry/pos/@name)
let $count := count(/dico/entry/pos[@name eq $x])
order by $count descending
return concat($x," ",$count)
