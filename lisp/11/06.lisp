; if (a + b <= c) || (a + c <= b) then False else True

; f
(defun valid_trig(a b c)
    (setq a (<= (+ a b) c))
    (setq b (<= (+ a c) b))
    (or a b)
)

(defun main()
    (setq a (read))
    (setq b (read))
    (setq c (read))
    (write-line (write-to-string (valid_trig a b c)))
)

(main)
