;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;

(defun islistordered (lst)
	(cond ((null (rest lst)) T)
			( (<= (first lst) (second lst) ) 
				( islistordered (rest lst))
			)
			( (> (first lst) (second lst))
				nil
			)
	;; else 
	(t 
		(write-line "ERROR: something went wrong")
		;( islistordered (rest lst))
	)
	)
)

(print (islistordered '(2 4 4 5 6 7)))
