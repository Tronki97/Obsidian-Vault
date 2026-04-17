---
tags:
  - TODO
aliases:
data: "`2026-04-16 13:24`"
---
- # Componenti:
	- si usano motori a corrente continua, sono dipoli e ruotano in base al voltaggio che gli viene applicato.
	- ## Motori passo passo:
		- estremamente precisi, il rotore gira in base ad una serie di passi determinata dall'eccitazione data ad i magneti all'interno 
	- ## Servomotori:
		- fanno movimenti completi in base ad un angolo preciso che gli viene indicato.  
- # H-Bridge:
	- permette di pilotare un motore sia in senso orario che antiorario con una sola alimentazione.
	- ![[Pasted image 20260416140113.png|479]]
		- i transistor sono messi a coppia $(NPN, PNP)$ in modo tale che se su $B$ per esempio scorre corrente il transistor $NPN$ andrà in saturazione e quindi se voglio far girare il motore dovrò tenere $A$ a $0$ 
- # Link Utili: