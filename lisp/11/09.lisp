;; sqrt((x1 - x0) ^ 2 + (y1 - y0) ^ 2 + (z1 - z0) ^ 2)

(defun dist3D(x0 y0 z0 x1 y1 z1)
    (setq x (expt (- x1 x0) 2))
    (setq y (expt (- y1 y0) 2))
    (setq z (expt (- z1 z0) 2))
    (sqrt (+ x y z))
)

(defun main()
    (setq x0 (read))
    (setq y0 (read))
    (setq z0 (read))

    (setq x1 (read))
    (setq y1 (read))
    (setq z1 (read))

    (write-line (write-to-string (dist3D x0 y0 z0 x1 y1 z1)))
)

(main)
