;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;

(defun checker (lst)
	(cond 
		( 	( null lst ) 
				nil )
		( 	(and(isoperand (first lst)) 
				(isoperator (second lst))
				(isoperand (nth 2 lst)) 
		   	) 
				t )
		( 	( or(not(isoperand (first lst))) 
				(not(isoperator (second lst)))
				(not(isoperand (nth 2 lst)))
			) 	
				nil )
	)
)

(defun isoperator (atm)
	(cond
		( ( null atm ) nil )
		( ( atom atm ) 
			(cond 
				((string= 'plus atm) t )
				((string= 'minus atm) t )
				((string= 'times atm) t )
				((string= 'dividedby atm) t )
				((string= '+ atm) t )
				((string= '- atm) t )
				((string= '* atm) t )
				((string= '/ atm) t )
			(nil
				nil)

			)		
		)	
		( (not (atom atm )) nil )
	)
)

(defun isoperand (oprnd)
	(cond 
		( ( null oprnd ) nil )
		( (typep oprnd 'integer) t )
		( (not(typep oprnd 'integer)) nil )
		( (and  (isoperand (first oprnd)) 
				(isoperator (second oprnd))
				(isoperand (nth 2 oprnd)) 
		  ) (checker (oprnd))
		)
	)
)

;;(print (not(isoperator 'plus)) )

;;(print (atom  '(7 plus 11)) )

;;(print (isoperand 0) )

(print (checker '(7 plus 11)) )

(print (checker '(7 plus (11 minus 3))) )
