(defstruct no
    n
    esq
    dir
)

(setq minhaArvore
    (make-no
        :n 52
        :esq (make-no :n 32               ;pode omitir o NIL
                      :esq (make-no :n 12 :esq NIL :dir NIL)
                      :dir (make-no :n 35 :esq NIL :dir NIL)
             )
        :dir (make-no :n 56
                      :esq (make-no :n 55 :esq NIL :dir NIL)
                      :dir (make-no :n 64 :esq NIL :dir NIL)
             )
    )
)

(setq testTree
    (make-no
        :n 51
        :esq (make-no :n 32               ;pode omitir o NIL
                      :esq (make-no :n 12 :esq NIL :dir NIL)
                      :dir (make-no :n 35 :esq NIL :dir NIL)
             )
        :dir (make-no :n 56
                      :esq (make-no :n 55 :esq NIL :dir NIL)
                      :dir (make-no :n 64 :esq NIL :dir NIL)
             )
    )
)

(setq INF 1000)

(defun inOrder(arv)
    (if (not (null arv))
        (append
            (inOrder (no-esq arv))
            (list (no-n arv))
            (inOrder (no-dir arv))
        )
    )
)

;;
;; (...)
;;

;; Aux functions

(defun occurrencesList(l x)
    (if (null l)
        0
        (if (= (car l) x)
            (+ 1 (occurrencesList (cdr l) x))
            (occurrencesList (cdr l) x)
        )
    )
)

(defun is_in_list(x l)
    (if (not (null (car l)))
        (= 1 (occurrencesList l x))
        NIL
    )
)

(defun lengthList(l)
    (if (null l)
        0
        (+ 1 (lengthList (cdr l)))
    )
)


; INICIO DA 3C

;; Nessa questão utilizamos a altura da árvore para calcular sua profundidade
(defun altura (arv)
	(if (and (null (no-esq arv)) (null (no-dir arv)))
		0
		(if (null (no-esq arv))
			(+ 1 (altura (no-dir arv)))
			(if (null (no-dir arv))
				(+ 1 (altura (no-esq arv)))
				(if (> (altura (no-esq arv)) (altura (no-dir arv)))
					(+ 1 (altura (no-esq arv)))
					(+ 1 (altura (no-dir arv)))
				)
			)
		)
	)
)

;; Função principal para achar os nós
(defun nosMaisDistantesQue (arv n)
	(if (not (null arv))
		(if (>= (profundidade arv) n)
			(elementos arv)
			(append (nosMaisDistantesQue (no-esq arv) n) (nosMaisDistantesQue (no-dir arv) n))
		)
		NIL
	)
)

(defun profundidade (arv)
	(- (altura minhaArvore) (altura arv))
)

(defun elementos (arv)
    (if (not (null arv))
        (cons (no-n arv) (append (elementos (no-esq arv)) (elementos (no-dir arv))))
    )
)

;; FIM DA 3C

;INICIO DA 3D

;; arvore usada para testes
;; numeros muito grandes podem demorar muito para serem computados
(setq testeArvoreDeBits
    (make-no
        :n 2
        :esq (make-no :n 7               ;pode omitir o NIL
                      :esq (make-no :n 7 :esq NIL :dir NIL)
                      :dir (make-no :n 0 :esq NIL :dir NIL)
             )
        :dir (make-no :n 5
                      :esq (make-no :n 10 :esq NIL :dir NIL)
                      :dir (make-no :n 10 :esq NIL :dir NIL)
             )
    )
)

;; funcao principal
(defun arvoreDeBits (arv)
	(if (not (null arv))
		(if (verificaFibonacci(no-n arv) 1)
			(progn
            	(setf (no-n arv) 1)
            	(arvoreDeBits (no-esq arv))
            	(arvoreDeBits (no-dir arv))
        	)
        	(progn
            	(setf (no-n arv) 0)
            	(arvoreDeBits (no-esq arv))
            	(arvoreDeBits (no-dir arv))
        	)
		)
	)
)

;; funcao para verificar se n está na série de fibonacci
;; tentamos calcular fibonacci para cada um dos números
;; menores que N
(defun verificaFibonacci (n i)
	(if (= n 0)
		T
		(if (> (- i 3) n)
			NIL
			(if (= (fibonacci i) n)
				T
				(verificaFibonacci n (+ i 1))
			)
		)
	)

)

(defun fibonacci(n)
	(if (or (= n 1) (= n 2))
		1
		( + ( fibonacci (- n 1) ) ( fibonacci (- n 2) ) )

    )
)

;FIM DA 3D

;INICIO DA 3A

(defun distanciaFolhas (arv n)
	(if (and (null (no-esq arv)) (null no-dir (arv)))
		(list n)
		(append (distanciaFolhas (no-esq arv) (+ n 1)) (distanciaFolhas (no-dir arv) (+ n 1)))
	)
)

;FIM DA 3A

;; Questão 3B

(defun elementosIguais(arv1 arv2)
    (common_elements (inOrder arv1) (inOrder arv2))
)

;; Return the number of equal elements between two lists
(defun common_elements(a1 a2)
    (lengthList (common_elements_list a1 a2))
)

;; Return the equal elements between two lists
(defun common_elements_list(a1 a2)
    (if (null a1)
        ()
        (if (is_in_list (car a1) a2)
            (append (list (car a1)) (common_elements_list (cdr a1) a2))
            (append () (common_elements_list (cdr a1) a2))
        )
    )
)

;; fim 3b

(defun main()
    ;; Original tests
    ;; (write-line (write-to-string (soma minhaArvore)))
    ;; (write-line (write-to-string (buscaElemento minhaArvore 35)))
    ;; (write-line (write-to-string (buscaElemento minhaArvore 36)))
    ;; (write-line (write-to-string (minimoElemento minhaArvore)))
    ;; (write-line (write-to-string (incrementa minhaArvore 2)))
    ;; (write-line (write-to-string minhaArvore))

    (write-line (write-to-string (inOrder minhaArvore)))
    (write-line (write-to-string (inOrder testTree)))
    (write-line (write-to-string (elementosIguais minhaArvore testTree)))

    ;; (write-line (write-to-string (distanciaFolhas minhaArvore 0)))
    (write-line (write-to-string (nosMaisDistantesQue minhaArvore 1)))
    (write-line (write-to-string (arvoreDeBits testeArvoreDeBits)))
    (write-line (write-to-string testeArvoreDeBits))
)

(main)
