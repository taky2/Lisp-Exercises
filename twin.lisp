;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;  TWIN : Duplicates all items in list
;;	-----------------------------------

(defvar data1 '(1 test 3 cat ))

(defun twin (lst)
	(twin_helper (reverse lst) nil)
)  	
    
(defun twin_helper (lst twinlst)
	(cond ((null lst) twinlst)
		( (twin_helper (rest lst) (cons (first lst) (cons (first lst) twinlst))) )
	(t 
		(write-line "ERROR: something happened inside twin_helper")
	)
	)
)

(write-line "")
(write "program 'twin' excecuting...")
(print (twin data1))
(write-line "")

;;  ===========================================
;;	UNTWIN : Checks for and removes duplicates
;;	-------------------------------------------

(defvar data2 '(1 1 test 3 3 cat cat ))

(defun untwin (lst) 
	(untwin_helper (reverse lst) nil)
)

(defun untwin_helper (lst twinlesslst)
	(cond ((null lst) twinlesslst) ;; REMOVE rest ?
		( (eq (first lst) (second lst)) (untwin_helper (rest lst) twinlesslst) )
		( (not (eq (first lst) (second lst))) (untwin_helper (rest lst) (cons (first lst) twinlesslst) )) 
	(t 
		;(untwin_helper (rest lst) (cons (first lst) twinlesslst) )
		;(write-line "ERROR: something happened inside untwin_helper")

	)
	)
)	


(write-line "")
(write "program 'untwin' excecuting...")
(print (untwin data2))
(write-line " ")
(write-line " ")
(write-line "Done.")
(write-line "")

