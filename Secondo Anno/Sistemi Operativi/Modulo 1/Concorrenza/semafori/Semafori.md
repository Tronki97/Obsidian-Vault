---
tags: 
aliases:
  - operazioni semafori
  - invariante semafori
data: "`2024-10-24 10:42`"
---
- # Intro:
	- paradigma per la sincronizzazione.
	- descrive il [[Sistema operativo||S.O]] come una collezione di  processi sequenziali che cooperano.
	- usa un meccanismo di sincronizzazione facile da usare _"pronto all'uso"_ 
- # Def:
	- più processi possono cooperare attraverso dei segnali, in modo che un processo possa essere bloccato in certi punti finché non riceve un segnale da un altro processo
	- ## Operazioni:
		- `V`: invia un segnale, per dire che è avvenuto un evento o il rilascio di una risorsa
			- incrementa il valore di `v` (_valore del semaforo_)
		- `P`: attendere che succeda qualcosa. 
			- aspetta che il valore `v>0` e poi decrementa `v` di 1 
	- ![[Pasted image 20241024105052.png||300]]
- # Invariante 
	- $n_{P}$ numero di operazioni P svolte
	- $n_{V}$ numero operazioni V svolte.
	- `init` valore iniziale del semaforo.
	- _vale il seguente invariante_:
		- $$n_{p}\le n_{V}+init$$
	- quindi il valore del semaforo è:
		- $$n_{V}+init-n_{p}$$ 
		- che deve essere quindi sempre $\ge0$  
	- ## Casi d'uso:
		- `eventi(init=0)`
			- il numero "conseguente" di eventi deve essere $\le$ al numero di volte che l'evento si è verificato
		- `risorse(init>0)`:
			- il numero di richieste soddisfatte deve essere $\leq$ al numero iniziale di risorse + numero risorse restituite.
- # Implementazione di [[Sezioni critiche (critical section)||CS]] 
	- ![[Pasted image 20241024110012.png||350]]
	- mutua esclusione: due processi non possono fare P e risolverla prima di fare una V
	- Deadlock: 
- # Semafori FIFO
	- il processo che è stato sospeso più a lungo viene svegliato per primo.
	- assenza di [[Proprietà di un programma#^054a32|starvation]] 
	- la struttura dati è una _coda_ 
	- non prevede la _priorità nei processi_
- # Vantaggi:
	- Il busy-waiting avviene ma raramente grazie al fatto che viene eseguito solo alle, _molto brevi_, sezioni critiche di $P$ e $V$
	- la sezione critica non è quasi mai occupata. 
- # Difetti:
	- la mutua esclusione è lasciata al programmatore. che potrebbe mettere errori.
		- omettere un `P` o `V` 
		- scambiare l’ordine di `P` e `V`
		- fare certe operazioni su semafaori sbagliati.
	- costruito a basso livello.
	- forti problemi di leggibilità.
	- 
- # Link Utili:
	- 