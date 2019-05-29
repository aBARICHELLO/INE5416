;; A função qual ordem foi separada em 2, para verificar a ordem
(defun qualOrdem (listaNumeros)
	(if (verificaCrescente listaNumeros)
		"nao-decrescente"
		(if (verificaDecrescente listaNumeros)
			"nao-crescente"
			"sem ordem"
		)
	)
)

(defun verificaCrescente (listaNumeros)
	(if (= 1 (elementos listaNumeros))
		T
		(if (< (car listaNumeros) (car (cdr listaNumeros)))
			(verificaCrescente (cdr listaNumeros))
			NIL
		)
	)

)

(defun verificaDecrescente (listaNumeros)
	(if (= 1 (elementos listaNumeros))
		T
		(if (> (car listaNumeros) (car (cdr listaNumeros)))
			(verificaDecrescente (cdr listaNumeros))
			NIL
		)
	)

)

;; Utilizamos o numero de elemntos como condição de parada da recursão
(defun elementos (lista)
	(if (null lista)
		0
		(+ 1 (elementos (cdr lista)))
	)
)

(defun main()
	(write-line (write-to-string (qualOrdem '(2 4 5 6))))
	(write-line (write-to-string (qualOrdem '(1 1 9 2))))
	(write-line (write-to-string (qualOrdem '(9 5 4 3))))
)

(main)
