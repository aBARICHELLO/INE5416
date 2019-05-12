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

(defun soma(arv)
    (if (null arv)
        0
        (+
            (no-n arv)
            (soma (no-esq arv))
            (soma (no-dir arv))
        )
    )
)

(defun buscaElemento(arv x)
    (if (null arv)
        NIL
        (or
            (= (no-n arv) x)
            (buscaElemento (no-esq arv) x)
            (buscaElemento (no-dir arv) x)
        )
    )
)

(defun minimo(x y)
    (if (< x y)
        x
        y
    )
)

(setq INF 1000)

(defun minimoElemento(arv)
    (if (null arv)
        INF
        (minimo
            (no-n arv)
            (minimo
                (minimoElemento (no-esq arv))
                (minimoElemento (no-dir arv))
            )
        )
    )
)

(defun incrementa(arv x)
    (if (not (null arv))
        (progn
            (setf (no-n arv) (+ (no-n arv) x))
            (incrementa (no-esq arv) x)
            (incrementa (no-dir arv) x)
        )
    )
)

;;
;; A
;;
(defun elementOccurrences(arv x)
    (if (null arv)
        0
        (if (= (no-n arv) x)
            (+ 1 (+ (elementOccurrences (no-esq arv) x) (elementOccurrences (no-dir arv) x)))
            (+ (elementOccurrences (no-esq arv) x) (elementOccurrences (no-dir arv) x))
        )
    )
)

;;
;; B
;;
(defun elementsGreaterThan(arv x)
    (if (null arv)
        0
        (if (> (no-n arv) x)
            (+ 1 (+ (elementsGreaterThan (no-esq arv) x) (elementsGreaterThan (no-dir arv) x)))
            (+ (elementsGreaterThan (no-esq arv) x) (elementsGreaterThan (no-dir arv) x))
        )
    )
)

;;
;; C
;;
(defun treeAverage(arv)
    (/ (soma arv) (size arv))
)

;;
;; D
;;
(defun size(arv)
    (if (null arv)
        0
        (+ 1 (+ (size (no-esq arv)) (size (no-dir arv))))
    )
)

;;
;; E
;;
(defun elements(arv)
    (if (not (null arv))
        (cons (no-n arv) (append (elements (no-esq arv)) (elements (no-dir arv))))
    )
)

;;
;; F
;;

(defun main()
    ;; (write-line (write-to-string (soma minhaArvore)))
    ;; (write-line (write-to-string (buscaElemento minhaArvore 35)))
    ;; (write-line (write-to-string (buscaElemento minhaArvore 36)))
    ;; (write-line (write-to-string (minimoElemento minhaArvore)))
    ;; (write-line (write-to-string (incrementa minhaArvore 2)))
    ;; (write-line (write-to-string minhaArvore))

    (write-line (write-to-string (elementOccurrences minhaArvore 64))) ;; 1
    (write-line (write-to-string (elementsGreaterThan minhaArvore 0))) ;; 7
    (write-line (write-to-string (treeAverage minhaArvore))) ;; 306/7
    (write-line (write-to-string (size minhaArvore))) ;; 7
    (write-line (write-to-string (elements minhaArvore)))
)

(main)
