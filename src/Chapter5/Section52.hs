-- Экспортирование
-- http://www.haskell.org/onlinereport/haskell2010/haskellch5.html#x11-1000005.2
module Chapter5.Section52 where
-- exports 	→ 	( export1 , … , exportn [ , ] ) 	    (n ≥ 0)
-- 
-- export 	→ 	qvar
--	| 	qtycon [(..) | ( cname1 , … , cnamen )] 	    (n ≥ 0)
--	| 	qtycls [(..) | ( var1 , … , varn )] 	    (n ≥ 0)
--	| 	module modid
-- 
-- cname 	→ 	var | con 
-- По умолчанию экспортируются вся область видимости модуля
data TheTest = A | B