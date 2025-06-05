---
Professor: renzo.davoli@unibo.it
Module: "1"
tags:
  - project
---
## APPUNTI
+ __Struttura Dati__
	+ Struttura dati che _rappresenta un processo_
```c
typedef struct pcb_t {
	/* process queue */
	struct list_head p_list;
	
	/* process tree fields */
	struct pcb_t *p_parent; /* ptr to parent */
	struct list_head p_child; /* children list */
	struct list_head p_sib; /* sibling list */
	
	/* process status information */
	state_t p_s; /* processor state */
	cpu_t p_time; /* cpu time used by proc */
	
	/* Pointer to the semaphore the process is currently blocked on */
	int *p_semAdd;
	
	/* Pointer to the support struct */
	support_t *p_supportStruct;
	
	/* process id */
	int p_pid;
} pcb_t, *pcb_PTR;
```
+ __Allocazione E Deallocazione Di PCBs.
	+ Si assume che il nostro sistema operativo _supporta al massimo 20 processi contemporaneamente_.
		+ Dato dalla costante `MAXPROC` nel modulo `const.h`.
	+ I _processi liberi o non utilizzati vengono memorizzati in una lista circolare doppiamente concatenata_. 
		+ Questa lista viene indicata con `pcbFree_h`.
			+ [[Liste]].
	+ In questa fase _non si deve usare la funzione_ `malloc`, quindi _non è possibile acquisire memoria dinamica_.
		+ Si usa come "heap" un _array di PCBs_.
		+ Viene indicato con `pcbFree_table[MAXPROC]`.
	+ Funzioni da implementare:
		+ `void initPcbs()`
			+ _Inizializza la lista di PCBs liberi_ `pcbFree` _per contenere tutti gli elementi dell'array_ `pcbFree_table[MAXPROC]`.
				+ Questo metodo verrà chiamato una sola volta, quando si inizializza la struttura.
		+ `void freePcb(pcb_t *p)`
			+ _Inserisce_ l'elemento puntato da `p` _nella lista di PCBs liberi_ `pcbFree`.
		+ `pcb_t *allocPcb*()`
			+ Se `pcbFree` _è vuota_:
				+ _Ritornare_ `NULL`.
			+ Altrimenti:
				+ _Rimuovere un elemento da_ `pcbFree`.
					+ I PCB vengono ordinati in ordine crescente rispetto al proprio ID.
				+ _Inizializzare i campi in modo opportuno_.
					+ Usando `NULL` o `0`.
				+ _Ritornare un puntatore all'elemento rimosso_.
					+ I PCB vengono riutilizzati, quindi non bisogna usare valori vecchi quando il PCB viene riallocato.
+ __Organizzazione Code Di PCBs__
	+ I PCBs possono essere gestiti e organizzati attraverso delle _code_.
		+ Sempre implementate attraverso le [[Liste]].
	+ Funzioni da implementare:
		+ `void mkEmptyProcQ(list_head *head)`
			+ _Inizializza l'elemento sentinella della coda_.
		+ `int emptyProcQ(list_head *head)
			+ Se _la coda_, la cui testa è puntata da `head`, _è vuota_:
				+ _Ritorna_ `TRUE` --> `1`.
			+ Altrimenti:
				+ _Ritorna_ `FALSE` --> `0`.
		+ `void insertProcQ(list_head *head, pcb_t *p)`
			+ _Inserisce il PCB_, puntato da `p`, _nella coda di processi attivi_, la cui testa è puntata da `head`.
		+ `pcb_t *headProcQ(list_head *head)`
			+ Se _la coda è vuota_:
				+ _Ritorna_ `NULL`.
			+ Altrimenti:
				+ _Ritorna un puntatore al primo elemento della coda di processi attivi_, la cui testa è puntata da `head`.
					+ Non si deve rimuovere la testa della coda.
		+ `pcb_t *removeProcQ(list_head *head)`
			+ Se _la coda è vuota_:
				+ _Ritorna_ `NULL`.
			+ Altrimenti:
				+ _Rimuove il primo elemento della coda dei processi attivi_, la cui testa è puntata da `head`.
					+ Il primo elemento sarebbe la testa.
				+ _Ritorna il puntatore all'elemento rimosso_.
		+ `pcb_t *outProcQ(list_head *head, pcb_t *p)`
			+ Se `p` _non è indicato all'interno della coda_:
				+ _Ritorna_ `NULL`.
			+ Altrimenti:
				+ _Rimuove il PCB_, puntato da `p`, _che si trova dentro la coda dei processi attivi_, la cui testa è puntata da `head`.
+ __Organizzazione Alberi Di PCBs__
	+ In aggiunta, i PCBs possono essere gestiti e organizzati anche attraverso delle _strutture gerarchiche ad albero_.
		+ _Parent_ `prnt` --> PCB che _contiene una lista di children_.
			+ Children indicano la profondità dell'albero.
		+ _Child_ `child` --> PCB che _contiene una lista di siblings_ `sib`.
			+ Child e siblings hanno un puntatore al parent.
			+ Siblings indicano il grado del nodo.
	+ Funzioni da implementare:
		+ `int emptyChild(pcb_t *p)`
			+ Se il _PCB_, puntato da `p`, _non ha children_:
				+ _Ritorna_ `TRUE` --> `1`.
			+ Altrimenti:
				+ _Ritorna_ `FALSE` --> `0`.
		+ `void insertChild(pcb_t *prnt, pcb_t *p)`
			+ `p` _diventa child del PCB_ `prnt`.
		+ `pcb_t *removeChild(pcb_t *p)`
			+ Se `p` _non ha children_:
				+ _Ritorna_ `NULL`.
			+ Altrimenti:
				+ _Rimuove il primo child di_ `p`.
				+ _Ritorna un puntatore all'elemento rimosso_.
		+ `pcb_t *outChild(pcb_t *p)`
			+ Se `p` _non ha parent_:
				+ _Ritorna_ `NULL`.
			+ Altrimenti:
				+ `p` _smette di essere child del suo parent_.
					+ `p` non è necessariamente il primo child del suo parent, ma può trovarsi in qualsiasi posizione.
				+ _Ritorna_ `p`.
## DOMANDE

## REFERENZE 
+ https://www.cs.unibo.it/~renzo/so/MultiPandOS/MultiPandOSPhase1Pres.pdf
+ https://www.cs.unibo.it/~renzo/so/MultiPandOS/MultiPandOSPhase1Spec.pdf