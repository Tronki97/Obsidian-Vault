---
tags:
aliases:
  - ASLR
  - stack canaries
data: "`2026-05-08 15:10`"
---
- # Stack canaries:
	- il compilatore aggiunge dei valori speciali sullo stack, detti _sentinel value_, prima di ogni _Instruction pointer_ salvato 
	- questo canary viene impostato su un valore casuale in ogni frame 
	- ogni volta che si esce da una funzione questo valore canary viene controllato e se è alterato il programma esce con un errore 
	- ## ES:
		- ![[Pasted image 20260508152316.png|495]]
		- ![[Pasted image 20260508152352.png|251]]
- # Stack non eseguibile
	- si può impostare l'area dello stack solo come lettura/scrittura evitando quindi che vengano eseguiti i codici malevoli. 
	- in questo modo non si evita il [[Buffer overflow]] ma almeno si evita che i codici malevoli vengano eseguiti
- # ASLR:
	- _Address-space layout randomization_
	- si trova a livello del sistema operativo e si basa sul randomizzare il layout della memoria 
	- ogni volta che un programma viene caricato in memoria si modifica la posizione della [[Buffer overflow#^089eb4|data memory]] e [[Buffer overflow#^7e53f3|program memory]] in questo modo si rende più difficile per l'attaccante indovinare la destinazione del buffer sullo stack 
- # Link Utili:
	- 