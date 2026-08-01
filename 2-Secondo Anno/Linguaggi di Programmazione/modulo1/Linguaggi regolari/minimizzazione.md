---
tags:
  - LdP
aliases:
data: "`2024-10-10 12:32`"
---
- # Argomento:
	- questo passaggio consiste nel trasformare i [[Automi finiti deterministici|DFA]] "rudimentali", quindi con qualche ridondanza, in altri in modo da velocizzare le operazioni dell'analizzatore.   
	- ![[Pasted image 20241010123258.png]]
	- $q_{1}$ e $q_{2}$ sono equivalenti se li fondo risulta un [[Automi finiti deterministici||DFA]] più piccolo
		- ![[Pasted image 20241010123412.png]]
		- questo DFA è definito come _minimo_ perché non sono presenti [[Equivalenza o indistinguibilità degli stati|stati equivalenti]] 
		- infatti: $q_{3}$ e stato terminale e quindi $\epsilon\in L[N,q_{3}]$
		  $q_{2},q_{1}$ è stato non finale quindi $\epsilon \notin L[N,q_{1}q_{2}]$ ma $b\in L[N,q_{1}q_{2}]$ 
		  $q_{0}$ è non finale ma $b \notin L[N,q_{0}]$ 
- # Link Utili:
	- 