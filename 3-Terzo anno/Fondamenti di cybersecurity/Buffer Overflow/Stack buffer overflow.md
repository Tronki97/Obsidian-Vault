---
tags:
aliases:
  - Shellcode
  - NOP sled
data: "`2026-05-08 15:09`"
---
- # Stack buffer overflow:
	- quando il buffer si trova nello stack, di solito come variabile locale nello stack frame di una funzione
	- questo attacco è anche detto _stack smashing_ 
	- ## ES:
		- ![[Pasted image 20260427095211.png|677]]
		- in questo caso il programma non controlla la lunghezza della stringa $s$ e potrebbe succedere che sia più lunga della capacità del buffer che è di $32$ 
	- un problema grande può presentarsi quando facendo un [[Buffer overflow]] si va in caso a sovrascrivere aree dello stack sensibili come le aree di indirizzo dello _instruction pointer_ e quindi quando la funzione chiamata termina il programma non sa più dove tornare e quindi crasha.
	- Quindi riuscire a mandare in crash il programma con un attacco di questo tipo può essere visto come una sorta di _attacco DoS_
	- inoltre si potrebbe anche inserire nello stack del codice dannoso scrivendo nel vecchio stack pointer uno nuovo che punta ad una certa funzione che vogliamo fargli eseguire. 
- # Shellcode:
	- codice malevolo inserito dall'attaccante e di solito contenuto nel buffer in overflow 
	- è specifico per una particolare architettura di sistema e deve essere quindi in grado di interagire con il sistema 
	- deve poter essere eseguito indipendentemente dalla sua posizione nella memoria, deve poter utilizzare solo indirizzi relativi alla sua posizione corrente, usando quindi degli offset, l'attaccante non è in grado di specificare l'indirizzo di partenza 
	- non può contenere valori `NULL` in quanto una funzione come `strcpy()` si ferma ogni volta che legge un valore `NULL` l'unico punto in cui questo carattere può essere messo alla fine di tutto il codice 
	- lo shellcode inoltre deve sopravvivere a qualsiasi modifica apportata al programma 
	- ## NOP sled:
		- siccome gli indirizzi di memoria sullo stack cambiano spesso risulta difficile indovinare il punto preciso dove saltare 
		- un modo per riuscire a saltare alla posizione dello shellcode è rendere l'area di memoria dedicatagli molto grande 
		- per farlo ci viene in aiuto il fatto che molte CPU supportano istruzioni `no-op` che sono istruzioni da un _byte_ che non fanno nulla 
		- quello che si fa quindi è creare una enorme schiera di istruzioni `NOP` prima dello  così se il salto per cercare di arrivare sullo _shellcode_ atterra su una di quelle operazioni continuerà a farle finche non arriverà allo _shellcode_ effettivo.
		- ![[Pasted image 20260508150644.png|558]] 
- # Link Utili:
	- 