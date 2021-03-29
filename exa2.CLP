
(deffacts datos

	(magico 21)
	(obstaculo 6 3)

	(calculo 5 3 8 14 7 magic 0)

)

(defrule resta
	?f<-(calculo $?ini ?x ?y $?fin)
	(test (> ?x ?y) ) 
	=>
	(assert (calculo $?fin magic 0))
	(printout t "resta" crlf)	
)