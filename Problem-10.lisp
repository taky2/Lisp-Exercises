;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;


(defvar lst1 '(86 23 1 8 0 6 7) ) 
(defvar lst2 '(1 0 6 2 3) ) 


(defun myunion (lst1 lst2) 
	(cond 
		( (null lst1) lst2 )
		( (mymember (first lst1) lst2) (myunion (rest lst1) lst2) )
		( (not (mymember (first lst1) lst2)) (myunion(rest lst1) (cons (first lst1) lst2) ) )
	)	
)

(defun myintersection (lst1 lst2)
	(myintersection_helper lst1 lst2 nil )
)

(defun myintersection_helper (lst1 lst2 newlst)
	(cond
		( (null lst1) newlst)
		( (mymember (first lst1) lst2) (myintersection_helper (rest lst1) lst2 (cons (first lst1) newlst) ) )
		( (not (mymember (first lst1) lst2)) (myintersection_helper (rest lst1) lst2 newlst) ) 
	)
)

(defun mymember (atom lst)
	(cond
		( (null lst) nil )
		( (equal atom (first lst)) t) 
		(t (mymember atom (rest lst) ) )
	)
)


(write-line "")

(format t "The set a: ~a~%"  lst1 )
(format t "The set b: ~a~%" lst2 )
(write-line "")

(format t "The results of a∪b: ~a~%" (myunion lst1 lst2) )
(format t "The results of a∩b: ~a~%" (myintersection lst1 lst2) )
(format t "The results of (mymember 'bat '(b y)): ~a~%" (mymember 'bat '(b y)) )
(write-line "")

;; Assumption: cat is a single atom not three - mymember does not pick apart atoms char by char.
(write-line "*Assumption: bat is a single atom not three individual chars - mymember does not pick apart atoms char by char. ")
(write-line "")
