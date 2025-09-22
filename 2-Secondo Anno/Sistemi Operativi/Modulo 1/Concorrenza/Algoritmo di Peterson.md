---
tags: []
aliases:
  - peterson
data: "`2024-10-19 19:14`"
---
- # Def:
	- ![[Pasted image 20241019191437.png]]
	- è più semplice e lineare rispetto a quello di [[Algoritmo di Dekker||dekker]] 
	- più facilmente generalizzabile al caso di processi multipli (infatti Dekker generalizzato a NN processi è difficilissimo), e non ha busy waiting come Dekker
	- chi dei due arriva a dichiarare need per primo da il turno all'altro che fa si che entri nel while per poi quindi far andare nella [[Sezioni critiche (critical section)||CS]] il primo.
- # Generalizzazione per "n" processi:
	- ![[Pasted image 20241019191628.png]]
- # Dim:
	- ## Assenza attese inutili:
		- se Q esegue codice non critico allora `needq` sarà falso e quindi P eseguirà codice critico.
	- ## Assenza starvation:
		- come quella del deadlock 
		- solo che alla fine entrambi possono accedere alle risorse siccome ogni volta che viene chiamato il processo da il turno all'altro che poi può eseguire la sua sezione critica siccome `needq=false` 
- # Link Utili:
	-  