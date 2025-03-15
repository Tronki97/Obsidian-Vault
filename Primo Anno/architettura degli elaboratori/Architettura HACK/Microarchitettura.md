---
tags: 
aliases:
  - SRAM
  - DRAM
  - SDRAM
data: "`2024-08-31 20:05`"
---
- è il livello di architettura che realizza il linguaggio macchina(ovvero l'[[ISA]], che poi viene usato dal linguaggio Assembly)
- Schema Processore hack 
	- ![[Pasted image 20240529164001.png]]
	- ogni istruzione viene eseguita in un solo ciclo di _clock_, ciò è possibile perché il set di istruzioni è molto ridotto quindi è di tipo [[CISC e RISC||RISC]] 
- ### SRAM
	- La cache dell'architettura hack utilizza l'SRAM(static random access memory) che è la più veloce ma anche la più dispendiosa in fatto di bit e permette, vista l'assenza di memory refresh, di mantenere le informazioni teoricamente all'infinito 
- ### DRAM & SDRAM
	- per la memoria centrale vengono usate le DRAM (_dynamic RAM_) o le SDRAM (_Synchronous DRAM_) ogni singolo bit è rappresentato da un condensatore e un transistor, e per questo c'è bisogno del _memory refresh_ perché il condensatore dopo essersi scaricato ha bisogno di ricaricarsi, queste caratteristiche le rendono più comode da miniaturizzare e permettono di risparmiarci su.
- 











Circuiti che analizzano i dati/istruzioni ricevute ad ogni clock 
processore HACK:
fatto da: ALU 
Due registri :
- D: contiene une dei due ingressi della ALU e può memorizzare un out precedente
- A: contiene un dato o output proveniente da un istruzione precedente

Cache
da 16-64kB è direttamente nel chip della CPU, intercetta le chiamate della CPU e vede se ha le risposte in memoria


indirizzo di memoria 

000000         000       1100
   tag           linea      offset
ez:
(indirizzi di RAM)
12            MISS              V=0                000000   L0
14            HIT                 V=1                000000   L0
22            MISS              V=0                000000    L1
130          MISS              V=1                000001    L0
24
13





Paginazione 

memoria virtuale: utilizzare il disco rigido al posto della RAM se quella che ho non basta; essendo più lenta della RAM ho più tempo per decidere cosa deve andarci dentro 



1) fetch
2) decode 
3) caricamento operandi
4) esecuzione 
5) scrittura dei risultati
cicli di clock 
(in hack è la somma di tutto il tempo che ci si mette a fare i passaggi;)
in pipeline è uguale al tempo max con cui viene eseguita l'istruzione)
1 add x, 5         1 2 3 4 5
2 sub y, 3            1 2 3 4 5
3 jmp 23                1 2 3 4 5 
4 add x, y                  1 2 3 4 
5 cmp x, 0                    1 2 3

23: ...



1 add x,5    1 2 3 4 5
2 sub y,x        1 2      3 4 5
3 add z,2          1 2       3 4
siccome la 2 ha bisogno di aspettare il risultato della 1 è possibile cambiare l' ordine di esecuzione delle istruzioni 2 e 3 per evitare di aspettare dei cicli di clock

1 add x,5    1 2 3 4 5
2 add z,2       1 2 3  4 5
3 sub y,x           1 2     3 4 5 




