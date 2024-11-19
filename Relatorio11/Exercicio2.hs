-- Função para calcular o fatorial
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

-- Função principal para verificar o número
calcula :: Int -> Int
calcula n
  | n > 0 = fatorial n
  | otherwise = n * 2

main :: IO ()
main = do
  let numero = 5 -- Substitua pelo número desejado
  let numero2 = -2 -- Substitua pelo número desejado
  putStrLn $ "Resultado fatorial: " ++ show (calcula numero)
  putStrLn $ "Resultado número negativo: " ++ show (calcula numero2)
