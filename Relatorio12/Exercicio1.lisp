(defun aplicar-funcao (lista)
  (mapcar (lambda (elemento)
            (if (>= elemento 4)
                (* elemento elemento) ;; Multiplica o elemento por ele mesmo
                (/ elemento 2)))      ;; Divide o elemento por 2
          lista))

(let* ((lista1 '(1 2 3))
       (lista2 '(4 5 6))
       (resultado1 (aplicar-funcao lista1))
       (resultado2 (aplicar-funcao lista2)))
  (print (append resultado1 resultado2))) ;; Junta as duas listas e imprime
