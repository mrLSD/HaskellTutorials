-- Объявление модуля  - основного модуля программы
module Main
-- Экспортируемые значение
( main
) where
--------------------------------------------------------------
-- Импортируемые модули
import ExModule1
-- Иерархическая структура вызова модулей
import Ex.ExModule2
--------------------------------------------------------------
-- Область видимости текущего модуля

coeffTest :: Float
coeffTest = 1.2

fnCoeff1 :: Float
-- Явный вызов функции из области видимости модуля ExModule1
fnCoeff1 = coeffTest * ExModule1.valueCoefEx

fnCoeff2 :: Float
-- Неявный вызов функции из области видимости модуля ExModule1
fnCoeff2 = fnCoeff1 * valueCoefEx

fnCoeff3 :: Float
-- Неявный вызов функции из области видимости модуля ExModule2
fnCoeff3 = fnCoeff2 * Ex.ExModule2.valueCoefEx2

-- Обязательно объявление значения main в основном файле программы
main = print $ show fnCoeff3
