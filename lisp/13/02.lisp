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
(defun replaceTree(arv x y)
    (if (not (null arv))
        (progn
            (setf (no-n arv) (if (= (no-n arv) x) y (no-n arv)))
            (replaceTree (no-esq arv) x y)
            (replaceTree (no-dir arv) x y)
        )
    )
)

;;
;; G
;;
(defun posOrder(arv)
    (if (not (null arv))
        (append
            (posOrder (no-esq arv))
            (posOrder (no-dir arv))
            (list (no-n arv))
        )
    )
)

;;
;; H
;;
(defun preOrder(arv)
    (if (not (null arv))
        (append
            (list (no-n arv))
            (preOrder (no-esq arv))
            (preOrder (no-dir arv))
        )
    )
)

;;
;; I
;;
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
;; J
;;
(defun diffSumEvenSumOdd(arv)
    (- (sumEvenElements arv) (sumOddElements arv))
)

(defun isEven(x)
    (= 0 (mod x 2))
)

(defun isOdd(x)
    (= 1 (mod x 2))
)

(defun sumEvenElements(arv)
    (if (null arv)
        0
        (if (isEven(no-n arv))
            (+
                (no-n arv)
                (sumEvenElements (no-esq arv))
                (sumEvenElements (no-dir arv))
            )
            (+
                (sumEvenElements (no-esq arv))
                (sumEvenElements (no-dir arv))
            )
        )
    )
)

(defun sumOddElements(arv)
    (if (null arv)
        0
        (if (= 1 (mod (no-n arv) 2))
            (+
                (no-n arv)
                (sumOddElements (no-esq arv))
                (sumOddElements (no-dir arv))
            )
            (+
                (sumOddElements (no-esq arv))
                (sumOddElements (no-dir arv))
            )
        )
    )
)

;;

(defun main()
    ;; Original functions
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
    (replaceTree minhaArvore 0 57) ;; Replace all 0 with 57
    (write-line "")

    (write-line "PRE:")
    (write-line (write-to-string (preOrder minhaArvore)))
    (write-line "IN:")
    (write-line (write-to-string (inOrder minhaArvore)))
    (write-line "POS:")
    (write-line (write-to-string (posOrder minhaArvore)))
    (write-line "")

    (write-line (write-to-string (sumEvenElements minhaArvore)))
    (write-line (write-to-string (sumOddElements minhaArvore)))
    (write-line (write-to-string (diffSumEvenSumOdd minhaArvore)))
)

(main)
