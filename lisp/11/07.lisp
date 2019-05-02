(defun fib(n)
    (if (or (= n 1) (= n 2))
        1
        (+ (fib (- n 1)) (fib (- n 2)))
    )
)

(defun main()
    (setq n (read))
    (write-line (write-to-string (fib n)))
)

(main)
