---
Professor: renzo.davoli@unibo.it
Module: "1"
tags:
  - pending
  - "#project"
---
## APPUNTI
+ __Struttura Dati__
```c
struct list_head {
    struct list_head *next;
    struct list_head *prev;
};
```
+ __Implementazione__
	+ Si tratta di _liste generiche circolari doppiamente concatenate_.
	+ Vi è un _elemento sentinella_, il quale _non contiene dati significativi_.
		+ Si tratta di un nodo speciale in quanto:
			+ `next` punta al _primo nodo della lista_.
				+ Oppure a se stesso se la lista è vuota.
			+ `prev` punta all'_ultimo nodo della lista_.
				+ Oppure a se stesso se la lista è vuota.
		+ Attraverso l'elemento sentinella è possibile rendere la lista circolare.
		+ Il suo scopo è quello di semplificare le operazioni di inserimento e cancellazione all'interno della lista.
	+ Al posto di avere degli elementi all'interno delle liste, il _tipo di dato diventa un wrapper della lista stessa_.
+ __Funzioni E Macro__
	+ `container_of(ptr, type, member)`
		+ _Macro_ che ritorna un _puntatore ad un_ `list_head`.
		+ Dove:
			+ `ptr` --> _puntatore al_ `list_head` _alla struttura dati di cui si vuole ottenere il puntatore_.
			+ `type` --> _tipo della struttura che contiene_ `list_head` _e di cui si vuole ottenere un puntatore_
			+ `member` --> _nome della variabile di tipo_ `list_head` _contenuta come campo della struttura_.
		+ In questo modo possiamo assegnare qualsiasi tipo vogliamo ad un `list_head`.
	+ `void __list_add(list_head *new, list_head *prev, list_head *next)`
		+ _Funzione_ che _inserisce un nuovo elemento_ `new` tra `prev` e `next`.
		+ Usata per:
			+ _Inserimento in testa_ attraverso la funzione:
				+ `void list_add(list_head *new, list_head *head)`.
			+ _Inserimento in coda_ attraverso la funzione:
				+ `void list_add_tail(list_head *new, list_head *head)`.
	+ `void __list_del(list_head *prev, list_head *next)`
		+ _Funzione_ che _rimuove gli elementi compresi fra_ `prev` e `next`.
		+ Usata per:
			+ _Eliminazione di un elemento_ attraverso la funzione:
				+ `void list_del(list_head *entry)`.
	+ `int list_is_last(const list_head *list, const list_head *head)`
		+ _Funzione_ che _ritorna 1 se_ `list` _è l'ultimo elemento, 0 altrimenti_.
		+ Dove:
			+ `list` --> _elemento della lista_.
			+ `head` --> _inizio della lista_.
	+ `int list_empty(const list_head *head)`
		+ _Funzione_ che _ritorna 1 se la lista è vuota, 0 altrimenti_.
	+ `list_next(const list_head *current)`
		+ _Funzione_ che _ritorna, se esiste, l'elemento successivo a_ `current`.
	+ `list_prev(const list_head *current)`
		+ _Funzione_ che _ritorna, se esiste, l'elemento precedente a_ `current`.
	+ `list_for_each(pos, head)`
		+ _Macro_ che _costruisce un for loop per iterare su ogni elemento della lista_.
		+ Dove:
			+ `pos` --> _puntatore da utilizzare per iterare sugli elementi_.
			+ `head` --> _elemento sentinella della lista_.
	+ `list_for_each_prev(pos, head)`
		+ _Macro identica a quella sopra ma che procede a ritroso_.
	+ `list_for_each_entry(pos, head, member)`
		+ _Macro_ che _costruisce un for loop che itera sul contenuto di una lista_.
		+ Dove:
			+ `pos` --> _puntatore da utilizzare per iterare sugli elementi_.
			+ `head` --> _elemento sentinella della lista_.
			+ `member` --> _nome del campo contenente la_ `list_head`.
	+ `list_for_each_entry_reverse(pos, head, member)`
		+ _Macro identica a quella sopra ma che procede a ritroso_.
## DOMANDE

## REFERENZE
+ https://www.cs.unibo.it/~renzo/so/MultiPandOS/MultiPandOSPhase1Pres.pdf
+ https://www.cs.unibo.it/~renzo/so/MultiPandOS/MultiPandOSPhase1Spec.pdf