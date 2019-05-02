(defun prime (n)
    (auxPrime n (- n 1))
)

(defun auxPrime (n i)
    (if (<= i 1)
        T
        (if (= (mod n i) 0)
            NIL
            (auxPrime n (- i 1))
        )
    )
)

(defun main ()
    (setq n (read))
    (write-line (write-to-string (prime n)))
)

(main)
