
(deffacts datos
	(magico 21)
	(calculo 5 3 8 14 7 magic 0)
)

(defrule suma
	?f<-(calculo $?ini ?x $?inter ?y $?fin magic ?m)
	=>
	(assert (calculo $?ini $?inter $?fin (+ ?x ?y) magic (+ ?x ?y)))
	(printout t suma" ?x " + " ?y " = " (+ ?x ?y) crlf)
	(retract ?f)
		
)

(defrule multiplica
	?f<-(calculo $?ini ?x $?inter ?y $?fin magic ?m)
	=>
	(assert (calculo $?ini $?inter $?fin (* ?x ?y) magic (* ?x ?y)))
	(printout t "multiplica " ?x " * " ?y " = " (* ?x ?y) crlf)
	(retract ?f)
		
)

(defrule resta
	?f<-(calculo $?ini ?x $?inter ?y $?fin magic ?m)
	(test (> ?x ?y) ) 
	=>
	(assert (calculo $?ini $?inter $?fin (- ?x ?y) magic (- ?x ?y)))
	(printout t "resta " ?x " - " ?y " = " (- ?x ?y) crlf)
	(retract ?f)
		
)

( defrule meta
	(calculo $?fin magic 21)
	=>
	(printout t "Llegaste a 21" crlf)
	(halt)

)