(defun myadd (lst)
	(cond ((null lst) 0)
		(t	(+	(car lst)
				(myadd (cdr lst)))
		)
	)
)

(write (myadd '(7 12 3 4)))
