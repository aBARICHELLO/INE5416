(defstruct Point2D x y)

;; a
;;sqrt ((x2 - x1)^^2 + (y2 - y1)^^2 + (z2 - z1)^^2)
(defun distance(p1 p2)
    (sqrt
        (+ (* (- (Point2D-x p1) (Point2D-x p2)) (- (Point2D-x p1) (Point2D-x p2)))
        (* (- (Point2D-y p1) (Point2D-y p2)) (- (Point2D-y p1) (Point2D-y p2))))
    )
)

;; b
(defun colinear(p1 p2 p3)
    (= 0 (- (- (- (+ (+ (* (Point2D-x p1) (Point2D-y p2)) (* (Point2D-y p1) (Point2D-x p3))) (* (Point2D-x p2) (Point2D-y p3))) (* (Point2D-x p1) (Point2D-y p3))) (* (Point2D-y p1) (Point2D-x p2))) (* (Point2D-y p2) (Point2D-x p3))))
)

;; c
(defun validTrig(p1 p2 p3)
    (setq a (distance p1 p2))
    (setq b (distance p2 p3))
    (setq c (distance p3 p1))
    (and (< (abs (- a b)) c) (and (< (abs (- b c)) a) (and (< (abs (- a c)) b) (and (> (+ a b) c) (and (> (+ b c) a)(> (+ c a) b))))))
)

(defun main()
    (setq p0 (make-Point2D :x 1 :y 2))
    (setq p1 (make-Point2D :x 2 :y 4))
    (setq p2 (make-Point2D :x 3 :y 6))
    (write-line (write-to-string (colinear p0 p1 p2)))
    (write-line (write-to-string (distance p0 p1)))
    (write-line (write-to-string (validTrig p0 p1 p2)))
)

(main)
