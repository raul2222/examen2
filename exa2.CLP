
(deffacts datos

	(magico 21)
	(obstaculo 6 3)

	(calculo 5 3 8 14 7 magic 0)

)

(defrule resta
	?f<-(calculo $?ini ?x ?y $?fin magic 0)
	(test (> ?x ?y) ) 
	=>
	
	(assert (calculo $?ini $?fin (- ?x ?y) magic 0))
	(printout t "resta " ?x " - " ?y " = " (- ?x ?y) crlf)
	(retract ?x)
	(retract ?y)
		
)