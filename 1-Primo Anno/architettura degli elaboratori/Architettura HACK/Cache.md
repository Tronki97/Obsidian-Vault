---
tags: 
aliases:
  - località temporale
  - località spaziale
  - direct mapped cache
  - cache miss
  - paginazione
data: "`2024-08-31 20:05`"
---
- #### Località temporale o spaziale ^2e4ff7
	- ##### Località temporale 
		- l'alta probabilità che si acceda ad una determinata cella di memoria in un determinato lasso di tempo, se la probabilità che la CPU acceda ad una determinata cella di memoria allora quella cella verrà mantenuta nella cache, così da velocizzarne l'accesso
	- ##### Località spaziale
		- in cache vengono inseriti oltre alla cella di memoria frequente anche i blocchi contigui ad essa perché spesso le istruzioni si trovano su blocchi contigui.
- #### Organizzazione della Cache
	- Esistono vari metodi per organizzare la cache come:
		- ##### Direct mapped cache 
			- si divide la memoria in blocchi di dimensione _m_
			- la cache viene organizzata in _n_ linee tutte di dimensione _m_, e ogni riga è indicizzata da 0 a n-1
			- I blocchi della memoria centrale possono essere inseriti in cache seguendo uno schema ad _"orologio"_:
				- Il _k-esimo_ blocco di memoria viene inserito nella linea di cache con indice _k%n_ e nella cache viene tenuta traccia di quale specifico blocco è attualmente salvato in ogni linea della cache
				- In questo modo ad ogni accesso in memoria, in base all'indirizzo della cella in memoria, si può capire in quale linea è contenuto il blocco da cercare.
- #### Come accedere alla cache
	- Immaginiamo una Cache con _n_=2048 linee, ognuna con dimensione _m_=32 byte. Ogni linea contiene una parte che indica la _validità_ (se la linea contiene un blocco), un _tag_ della linea (che indica quale blocco è contenuto) e la parte _data_ di di 32 byte con l'eventuale blocco contenuto.
		- ![[Pasted image 20240529171241.png]]
		- Immaginiamo di avere indirizzi di memoria a 32 bit 
			- 5 bit meno significativi indirizzano il byte dentro _data_
			- 11 bit subito dopo indicano quale linea di cache usare
			- i restanti 16 bit vanno controllati con il _tag_: se coincidono e _valid_ è True allora il blocco cercato è in cache, altrimenti è in memoria centrale 
- #### Gestione della Cache
	- con un accesso di successo alla cache si ha un _cache hit_ altrimenti un _cache miss_ 
		- ##### Cache miss: ^9c9c74
			- il blocco richiesto viene copiato dalla memoria centrale nella cache, ma solo dopo che il contento della corrispondente linea di cache sia stato riportato in memoria
			- per questo motivo ogni tanto i dati in memoria centrale non coincidono con quelli, più aggiornati, della cache. e ciò porta a problemi quando più dispositivi provano ad accedere alla stessa memoria centrale, ed un modo per gestire ciò è impedire l'accesso ai blocchi in cache finché non vengono copiati in memoria. 
- #### Paginazione
	- una tecnica di accesso e gestione della memoria fra quella centrale e la memoria di massa è la:
		- ##### Paginazione: ^04bdf1
			- Gestita dal [[SO||sistema operativo]] 
			- I blocchi dati (_pagine_) vengono spostati dalla memoria di massa alla memoria centrale quando richiesto
			- Quando i dati non servono più vengono riportati nella memoria di massa
			- Ogni spostamento è gestito da un algoritmo di Paginazione

# Trivia
- _DOMANDA_: è possibile che un programma venga eseguito in meno tempo senza cache rispetto che senza?
- _RISPOSTA_: Un calcolatore provvisto di cache sarà quindi sempre più veloce rispetto ad uno senza perché l'ultimo non possedendola dovrà cercare l'informazione necessaria in RAM la quale ha un tempo di accesso più alto rispetto alla cache rendendo l'esecuzione del programma più lenta
-  
