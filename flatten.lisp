;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;


(defun flatten (lst) 
	(cond
		( (null lst)
			nil
		)
		( (atom (first lst))
			(cons (first lst) (flatten (rest lst)) ) 
		)
		(t
			(append (flatten (first lst)) (flatten (rest lst)))
		)
	)
)

(print (remove nil (flatten  '(a b (c d) () (e (f (g) h))) )))