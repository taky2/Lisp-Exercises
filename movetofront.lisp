;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;

(defvar words '(testing 1 two 3 check))

(defun movetofront (atom lst)
	(cond (( null lst ) nil)
		((ismember atom lst) (cons atom (remove atom lst)))
		((not (ismember atom lst)) (cons atom lst))
	(t ( movetofront atom (rest lst)))
	)

)


(defun ismember (a1 a2)
	(cond ((null a2) nil)
		((equal a1 (first a2)) t)
	(t	(ismember a1 (rest a2))
	)
	)

)

(print (movetofront 'two words))