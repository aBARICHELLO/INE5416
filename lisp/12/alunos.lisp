(defun students()
    '((1 "Bob" (5.6 8 9.3))
      (2 "Ana" (8.2 9 7 6.5))
      (3 "Tom" (3.2 7 5.7 8.3))
      (4 "Bin" (7.5 5.3 8.5 6.2 3.1))
      (5 "Bia" (6.7 4.1 5.5)))
)

(defun getName(student)
    (car (cdr student))
)

(defun getNames(l)
    (if (null l)
        ()
        (cons (getName (car l)) (getNames (cdr l)))
    )
)

(defun getGrade(student)
    (last student)
)

(defun getGrades(l)
    (if (null l)
        ()
        (cons (getGrade (car l)) (getGrades (cdr l)))
    )
)

;; A

;; B
(defun classAverage(l)
    (listAverage (studentsAverage l))
)

(defun studentsAverage(l)
    (if (null l)
        ()
        (cons (listAverage (car (getGrade (car l)))) (classAverage (cdr l)))
    )
)

(defun main()
    ;; (write-line (write-to-string (getNames (students))))
    ;; (write-line (write-to-string (getGrade (car (students)))))
    (write-line (write-to-string (classAverage (students))))
)

;;
;; AUX fuctions
;;

(defun sumList(l)
    (if (null l)
        0
        (+ (car l) (sumList (cdr l)))
    )
)

(defun lengthList(l)
    (if (null l)
        0
        (+ 1 (lengthList (cdr l)))
    )
)

(defun listAverage(l)
    (/ (sumList l) (lengthList l))
)

(main)
