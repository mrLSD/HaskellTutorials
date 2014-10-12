module Chapter5.Main where
----------------------------------------------------------------
-- Общие положения:
-- * Программа на Haskell состоит из коллекции модулей, 
-- один из которых по соглашению должен быть Main и 
-- экспортировать value main
-- * Модули начинаю с заглавной буквы
-- * Модули могут быть взаимно рекурсивны
-- * Модули составлять иерархию, разделенную точкой и могут 
-- отражать путь к модулю
-- * По умолчанию во все модули импортируется модуль Prelude
----------------------------------------------------------------
-- Правила объявления модуля:
-- module 	→ 	module modid [exports] where body
-- 	| 	body
-- body 	→ 	{ impdecls ; topdecls }
-- 	| 	{ impdecls }
--	| 	{ topdecls }
-- 
-- impdecls 	→ 	impdecl1 ; … ; impdecln 	    (n ≥ 1)
-- topdecls 	→ 	topdecl1 ; … ; topdecln 	    (n ≥ 1) 
-- Где:
-- impdecls - Import Declarations - может быть пустым, и описывает 
-- импортируемые модули
-- topdecls - Top Declarations - может быть пустым и описывает основную
-- структурную часть модуля
----------------------------------------------------------------
-- Пример импортирования в текущей директории
-- явное определение области видимости для модуля ( qualified) 
-- с алиасом (as) имени модуля
import qualified 	Chapter5.Section52 as EC -- Exports Chapter
import 				Chapter5.ExModule1

-- Определяем тип через явное имя модуля
type NewType1 = Chapter5.ExModule1.ExModule1Data
-- Неявный вызов из модуля Chapter5.ExModule1
type NewType2 = ExModule1Data

-- Определяем тип через алиас имени модуля
type NewType3 = EC.TheTest