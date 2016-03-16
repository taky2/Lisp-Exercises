;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;

(defun search_list (lst my_num)
	(cond
		( (null lst) 
			0
		)
		
		( (is_list (first lst))
			(+  (search_nested_lists (first lst) my_num) 
				(search_list (rest lst) my_num)
			)
		)

		( (numberp (first lst)) 
			(cond
				( (has_my_num (first lst) my_num)
					(+ 1 (search_list (rest lst) my_num) )
				)
				(t
					(search_list (rest lst) my_num) )
			)
		)
		(t 
			(search_list (rest lst) my_num) )
	)

)


(defun search_nested_lists (lst my_num)
	(cond
		( (null lst)
			0
		)

		( (numberp (first lst))
			(cond
				( (has_my_num (first lst) my_num)
					(+ 1 (search_list (rest lst) my_num) )
				)
				(t
					(search_list (rest lst) my_num)
				)
			)
		)
		(t
			(search_nested_lists (rest lst) my_num)
		)

	)
)


(defun has_my_num(num my_num)
	(cond
		( (= num my_num)
			t
		)
		(t
			nil
		)
	)
)


(defun is_list (lst)
	(cond
		( (listp lst)
			t
		)
		(t
			nil
		)
	)
)



(print (search_list '() 1) )
(print (search_list '(2 d word) 6) )
(print (search_list '(2 () char) 2) )
(print (search_list '(word 9 7 (9 8) 7 a 7) 7) )
(print (search_list '(word 9 7 (7 9 8 7 7) at) 7) )