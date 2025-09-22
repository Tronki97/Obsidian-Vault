---
tags: []
aliases: 
data: "`2024-10-24 11:17`"
---
- # Def:
	- il valore può essere solo 0 e 1
	- garantiscono [[Proprietà di un programma#^1acdf8|mutua esclusione]]
- # Invariante:
	- $$0\le n_{V}+init-n_{P}\le 1=$$
	- $$=0\le s.value \le 1$$
- # Implementazione:
	- ![[Pasted image 20241024112037.png]]
	- si possono usare questi semafori per implementare quelli [[Semafori|generali]]:
		- uso un semaforo `mutex` per garantire la [[Proprietà di un programma#^1acdf8|mutua esclusione]] 
		- un semaforo _privato_ dinamico per ogni processo che partecipa
		- una coda per garantire la FIFO.
			- ![[Pasted image 20241024112848.png]]
			- ![[Pasted image 20241107093912.png||600]]
			- ## OSS:
				- quando `mutex` esegue le sue operazioni non sta facendo ricorsione di queste due $P$ e $V$ ma sta usando i metodi relativi alla sua classe (_binaria_)  
				- ma purtroppo questa soluzione non garantisce la coda FIFO siccome ogni processo ha diversi tempi di esecuzione.
				- 
- # Link Utili:
	- 