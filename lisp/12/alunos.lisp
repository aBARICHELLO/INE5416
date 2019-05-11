(defun students()
    '((1 "Bob" (5.6 8 9.3))
      (2 "Ana" (8.2 9 7 6.5))
      (3 "Tom" (3.2 7 5.7 8.3))
      (4 "Bin" (7.5 5.3 8.5 6.2 3.1))
      (5 "Bia" (6.7 4.1 5.5)))
)

(defun getNome (aluno)
    (car (cdr aluno))
)

(defun getGrades(aluno)
    (car (cdr (cdr aluno)))
)

(defun getNames(lista)
    (if (null lista)
        ()
        (cons (getNome (car lista)) (getNames (cdr lista)))
    )
)

(defun getGrade(aluno)
    (listAverage (getGrades aluno))
)

(defun averages(lista)
    (if (null lista)
        ()
        (cons (list (getNome (car lista)) (getGrade (car lista))) (averages (cdr lista))))
)

;; C

(defun classAverage(lista)
    (listAverage (studentsAverage lista))
)

(defun studentsAverage(lista)
    (if (null lista)
        ()
        (cons (getGrade (car lista)) (studentsAverage (cdr lista))))
)

;; D

(defun approvedStudents(lista)
    (if (null lista)
        ()
        (if (approved (car lista))
            (cons (getNome (car lista)) (approvedStudents (cdr lista)))
            (approvedStudents (cdr lista))))
)

(defun approved(aluno) (>= (getGrade aluno) 6))

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

;;

(defun main ()
    (write-line (write-to-string (getNames (students))))
    (write-line (write-to-string (averages (students))))
    (write-line (write-to-string (classAverage (students))))
    (write-line (write-to-string (approvedStudents (students))))
)

(main)
