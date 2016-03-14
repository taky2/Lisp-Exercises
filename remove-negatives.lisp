;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;

(defvar data1 '(1 -1 2 -2 3 -3 4 -4))

(defun removeneg (lst)
	;; adds second parameter nil (creates new empty list) 
	(removeneg_helper (reverse lst) nil)
)

;; first param: original list
;; second param: new list containing positive numbers
(defun removeneg_helper(lst posnums)
	;; while list is not empty, do the following (when list is empty, return posnums)
	(cond ( (null lst) posnums )
		;; if negative, check remainder of list
		( (isnegative(first lst))
	        (removeneg_helper (rest lst) posnums)
        )
    ;; else 
	(t
		;; if not negative, add to new list and process rest of original list 
		(removeneg_helper (rest lst) (cons (first lst) posnums ))
	)
	)
)
;; helper function to check for negative numbers 
(defun isnegative (number)
	(cond ( (< number 0)
		T)
	(t
		nil)
	)
)

(print (removeneg data1))
