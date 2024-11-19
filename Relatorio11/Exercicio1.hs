-- Cria uma lista de 30 a 1
lista :: [Int]
lista = [30,29..1]

-- Multiplica cada número da lista por 3
listaMultiplicada :: [Int]
listaMultiplicada = map (*3) lista

-- Inverte a lista e mostra o último elemento (que será o primeiro da lista original)
ultimoElemento :: Int
ultimoElemento = last (reverse listaMultiplicada)

main :: IO ()
main = do
    putStrLn $ "Lista original: " ++ show lista
    putStrLn $ "Lista multiplicada: " ++ show listaMultiplicada
    putStrLn $ "Último elemento da lista invertida: " ++ show ultimoElemento
