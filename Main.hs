------------------------------------------------------------
-- Документация и материалы:
-- http://www.haskell.org/onlinereport/haskell2010/
-- http://www.haskell.org/tutorial/
------------------------------------------------------------
-- Явная инициализация основного файла программы с экспортированием
-- значения 'main'
module Main(main) where
import Chapter5.Main()

main = print $ "OK"
