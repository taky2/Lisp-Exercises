;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;


(defun divide-by-five (x)
	"Return number of elements in a list divisible by 5"
	(let ((div5 0) (other 0) )
		(dolist (el x)
			(cond
			 ((eql (mod el 5) 0)
			  (setq div5 (+ 1 div5)))
			 (t (setq other (+ 1 other)))
			)
		)
	  (list div5)
	)
)

(write (divide-by-five '( 5 3 10 13 15)))