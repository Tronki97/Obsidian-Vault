---
Professor: renzo.davoli@unibo.it
Module: "1"
tags:
  - pending
  - project
---
## APPUNTI
+ __Struttura Dati__
```c
/* semaphore descriptor ( SEMD ) data structure */
typedef struct semd_t {
	/* Semaphore key */
	int *s_key;
	
	/* Queue of PCBs blocked on the semaphore */
	struct list_head s_procq;

	/* Semaphore list */
	struct list_head s_link;
} semd_t, *semd_PTR;
```
+ __Active Semaphore List (ASL)_
	+ Possiamo pensare un semaforo come un _intero_. `asl.h`
		+ A questo intero viene associato:
			+ Un _puntatore all'indirizzo di memoria dove esso viene memorizzato_.
			+ Una _coda di processi_, indicata con `s_procq`, che _contiene tutti i PCBs bloccati al semaforo_.
				+ Un semaforo è attivo se la coda di processi `s_procq` non è vuota.
			+ Una _lista di semafori ordinata in maniera crescente_, indicata con `s_link`, _la cui testa punta alla variabile_ `semd_h`.
				+ La lista a cui punta `semd_h`, nel modulo `asl.c`, rappresenta la active semaphore list.
					+ La active semaphore list contiene dei semaphore descriptors.
	+ Come nei PCBs sono presenti: `asl.c`
		+ Una _lista di semafori non utilizzati_.
			+ Questa lista viene indicata con `semdFree`
		+ Una _lista per tenere traccia dei semafori non utilizzati_, e un _array di semafori che viene usato come memoria dinamica_.
			+ Questa lista viene indicata con `semdTable[MAXPROC]`.
	+ Funzioni da implementare:
		+ `int insertBlocked(int *semAdd, pcb_t *p)`
			+ _Inserire il PCB_, puntato da `p`, _in coda alla coda dei processi attivi associati al semaforo_, con chiave `semAdd`.
			+ _Assegnare l'indirizzo del semaforo di_ `p` _con il semaforo_ `semAdd`.
			+ Se _il semaforo non è attivo_, quindi non è presente un descriptor nella ASL.
				+ _Alloca un nuovo descrittore dalla_ `semdFree`.
				+ _Inseriscilo nella ASL_, nella posizione appropriata.
				+ _Inizializza tutti i campi_.
					+ Assegna `s_key` a `semAdd` e `s_procq` a `mkEmptyProcQ()`.
				+ _Procedi come sopra_.
			+ Se il _semaphore descriptor necessita di essere allocato e_ `semdFree` _è vuota_:
				+ _Ritorna_ `TRUE` --> `1`.
			+ Altrimenti:
				+ _Ritorna_ `FALSE` --> `0`.
		+ `pcb_t *removeBlocked(int *semAdd)`
			+ _Cerca un descrittore_, all'interno della ASL, _del semaforo con chiave_ `semAdd`.
			+ Se _non è presente_:
				+ _Ritorna_ `NULL`.
			+ Altrimenti:
				+ _Rimuovi il primo PCB_, ovvero la testa della coda dei processi attivi bloccati a quello specifico semaforo trovato.
				+ _Ritorna un puntatore al PCB rimosso_.
				+ Se _la coda dei processi attivi diventa vuota_, ovvero `emptyProcQ(s_procq) == TRUE`:
					+ _Rimuovi il semaforo dalla ASL e ritornalo nella_ `semdFree`.
		+ `pcb_t *outBlocked(pcb_t *p)`
			+ _Rimuove il PCB_, puntato da `p`, _dalla coda di processi associata al suo corrispettivo semaforo_, ovvero `p->p_semAdd`, _all'interno della ASL_.
			+ Se _il PCB_, puntato da `p`, _non è presente all'interno della coda dei processi attivi associati al suo semaforo_:
				+ _Ritorna_ `NULL`.
			+ Altrimenti:
				+ _Ritorna_ `p`.
		+ `pcb_t *headBlocked(int *semAdd)`
			+ _Ritorna un puntatore al PCB in testa alla coda di processi attivi associata al semaforo con chiave_ `semAdd`.
			+ Se _il semaforo non è presente nella ASL o la coda dei processi attivi associata al semaforo è vuota_:
				+ _Ritorna_ `NULL`.
		+ `void initASL()`
			+ _Inizializza_ `semdFree` _per contenere tutti gli elementi dell'array_ `semdTable[MAXPROC]`.
				+ Questo metodo verrà chiamato una sola volta quando verrà eseguita l'inizializzazione della struttura.
## DOMANDE

## REFERENZE
+ https://www.cs.unibo.it/~renzo/so/MultiPandOS/MultiPandOSPhase1Pres.pdf
+ https://www.cs.unibo.it/~renzo/so/MultiPandOS/MultiPandOSPhase1Spec.pdf