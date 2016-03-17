;;  Stu Student – CSI 3210 – Spring 2016
;;  ====================================
;;

(defun f-to-c (temp)
	"fahrenheit to centigrade"
	(/ (- temp 32) 1.8 )
)

(write(f-to-c 70))

(write-line "")

(defun c-to-f (temp)
	"centigrade to fahrenheit"
	(+ 32 (* temp 1.8))
)

(write(c-to-f 21.111113))

(write-line "")

(defun temperature (temp)

	(setq unit (second temp))
	
	(cond ( (string= 'C unit) ( write(c-to-f (first temp)) ) )
		  ( (string= 'F unit) ( write(f-to-c (first temp)) ) )

		  (t (write-line "Input error") ) 
		  
	)
)


(write-line "")
(write-line "converting 100 centigrade to fahrenheit")
(temperature '(100 C))
(write-line "")
(write-line "converting 212 fahrenheit to centigrade")
(temperature '(212 F))
	
