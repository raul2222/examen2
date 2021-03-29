
(deffacts datos

	(maximo_X 8)
	(maximo_Y 5)
	(paquete 5 2)
	(almacen 3 5)
	(obstaculo 4 1)
	(obstaculo 4 2)
	(obstaculo 4 3)
	(obstaculo 4 5)
	(obstaculo 1 3)
	(obstaculo 5 3)
	(obstaculo 6 3)
	(robot 1 2 0 0 0)

)






(defrule entregado 
	?f<-(robot ?x ?y ?paq ?al ?prof)
	(test (and (= ?x 3) (= ?y 2) (= ?paq 1)) ) 
	=>
	(assert (robot ?x ?y ?paq (+ ?al 1) ?prof))	
	(printout t "Entregado" crlf)	
)