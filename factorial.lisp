;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;

(defun factorial (N)
	(cond ((= N 1)
		1 )
	(t
		(* N (factorial (- N 1)))
	)
	)
)

(write (factorial 4))