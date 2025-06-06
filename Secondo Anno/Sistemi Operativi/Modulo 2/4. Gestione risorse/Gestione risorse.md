---
tags: 
aliases:
  - assegnazione statica
  - assegnazione dinamica
  - prerilasciabile
  - risorse
  - condizioni di deadlock
  - classi di risorse
data: "`2025-03-07 10:52`"
---
- # Risorse: ^d3013b
	- Sono un insieme di elementi a cui i [[Concorrenza#^68dcd8|processi]] accedono
	- Possono essere fisiche o logiche:
		- _Fisiche_: [[Memorie]], dischi, interfacce di rete…
		- _Logiche_: Descrittori di processo([[Scheduler#^464f21|PCB]]), classi, [[Sezioni critiche (critical section)|sezioni critiche]] … 
	- Possono essere suddivise in _classi_: ^e7531f
		- Ogni risorsa viene detta _istanza di una classe_
		- Il numero di risorse viene detto _molteplicità_.
	- Un processo può richiedere solo una risorsa di una specifica classe, ma non una specifica risorsa.
	- ## Ad assegnazione statica:
		- Una volta assegnate non vengono più tolte fino alla terminazione del processo.
	- ## Ad assegnazione dinamica:
		- Una volta che un processo ha finito di usare una risorsa la rilascia
		- Per esempio le richieste a dispositivi I/O
	- ## Richieste:
		- _singola_
		- _Multipla_
		- _bloccante_: un processo si blocca finche non riceve le risorse che richiede
		- _non bloccante_: se la risorsa non è disponibile il processo non si blocca.
	- ## Risorse condivisibili:
		- Più processi possono accederci contemporaneamente
		- Come un file di sola lettura
	- ## Risorse non condivisibili:
		- Una volta che un processo ci accede nessun altro ci può accedere finche non viene rilasciata la risorsa.
		- Come le sezioni critiche.
	- ## Prerilasciabile:
		- Si dice prerilasciabile se la funzione di gestione può sottrarla ad un processo prima che questo l'abbia effettivamente rilasciata.
		- Il processo a cui viene tolta la risorsa deve bloccarsi
		- Successivamente la risorsa viene restituita al processo a cui era stata sottratta.
		- Come dei blocchi o partizioni di memoria.
- # Condizioni di verifica di [[Proprietà di un programma#^2a9ed1|deadlock]]: ^c336f6
	- Le seguenti condizioni sono sufficienti e necessarie
	- ## Non condivisibilità:
		- Se la risorsa non è condivisibile
	- ## Assenza di prerilascio:
		- Le risorse vengono rilasciate solo per volontà del processo che ci ha acceduto per primo.
	- ## Richieste bloccanti:
		- Le richieste sono bloccanti ed un processo che ha ottenuto una risorsa ne può richiedere un’altra.
	- ## Richiesta circolare:
		- Il processo $P_{0}$ attende $P_{1}$ che attende $P_{2}$ che a sua volta aspetta $P_{0}$ 
- # Link Utili:
	- 