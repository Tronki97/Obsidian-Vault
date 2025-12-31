---
tags:
aliases:
data: "`2025-12-31 15:15`"
---
- # Intro:
	- Avere più livelli di indici è utile per velocizzare le query
	- Possiedono un parametro $n$ che mi da informazioni sulla dimensione di ogni blocco dell'albero ovvero che: ogni blocco deve essere abbastanza grande per contenere $n$ chiavi e $n+1$ puntatori:
		- Quindi con un blocco da $4096B$ chiavi da $4B$ e puntatori da $8B$; $n$ dovrà essere:
			- $4n+8(n+1)<4096 \to n=340$
- # Regole:
	- Ogni blocco è sempre pieno più di metà 
	- ![[Pasted image 20251121155834.png|600]]
	- Le chiavi nelle foglie sono copie dei dati 
	- La radice ha almeno 2 puntatori usati, tutti i puntatori puntano ad un livello sotto e almeno la metà arrotondata per eccesso, dei puntatori, deve essere usata
		- Mentre _nelle foglie_ l'ultimo puntatore punta ad un'altra foglia mentre più della metà punta a dei dati 
		- Il puntatore alla foglia successiva serve per poter cercare valori che rispettino una condizione di maggioranza
	- Un nodo intermedio deve avere tutti i puntatori che puntano ad un blocco del livello inferiore e almeno $\left\lceil  \frac{n+1}{2} \right\rceil$ devono essere usati con $n$ numero di chiavi
- # Inserimento ed eliminazione:
	- ![[Pasted image 20251121161209.png]]
		- Si può far collassare l'albero siccome nel nodo di sinistra c'è spazio per una chiave e quello di destra ha una sola chiave quindi si può collassare
	- ![[Pasted image 20251121161318.png]]
		- Si necessita di aggiungere un altro blocco per aggiungere l'altra chiave alla foglia, siccome quel blocco non era grande a sufficienza 
	- ![[Pasted image 20251219180039.png|500]]
		- Che poi si necessita di aggiungere un altro blocco per far rispettare le regole di ricerca 
- # Link Utili:
	- 