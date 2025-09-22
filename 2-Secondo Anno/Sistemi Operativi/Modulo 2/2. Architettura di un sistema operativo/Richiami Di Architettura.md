---
tags: 
aliases:
  - interrupt
  - device driver
  - device controller
  - DMA
  - RAM
  - trap
data: "`2025-02-22 18:15`"
---
- # Architettura Di Von Neumann
	+ Memoria unica.
	+ Più usati dai sistemi general purpose.
	+ Nella architettura teorica c'è un solo bus.
		+ Nella realtà ci sono due bus differenti che gestiscono istruzioni e memoria.
+ # Nomenclatura
	+ Il _device_ :
		+ è l'hardware, come un disco oppure una tastiera.
	+ Il _device controller_ :
		+ è un pezzo di hardware che consente di collegare il device.
		+ Scheda elettronica di controllo.
	+ Il _device driver_ :
		+ software fornito dal sistema operativo per comunicare con il controller e quindi con il device stesso.
	+ La _memory management unit_:
		+ è hardware e permette di controllare la memoria.
	+ Il _memory manager_:
		+ è software e permette di configurare le funzionalità della memoria.
+ # Interrupt ^63291e
	+ È un meccanismo che permette l'interruzione del normale ciclo di esecuzione della CPU.
		+ Segnale che il controller può inviare al processore.
		+ Nel funzionamento normale i processori sono quelli che governano il bus.
			+ I dispositivi per parlare devono chiedere il permesso, ovvero devono richiedere un interrupt.
		+ Sostanzialmente si può pensare l'interrupt come un filo a cui è attaccato un sensore,  e tutti i dispositivi possono accedere a questo filo andandolo ad attivare per poter parlare.
	+ Viene introdotto nei sistemi operativi per renderli più efficienti.
		+ Senza interrupt i processori non potrebbero comunicare con il controller attraverso il sistema operativo.
	+ Ci sono leggi di indirizzi che corrispondono alla memoria e leggi di indirizzi che corrispondono al controller.
		+ Quindi si può decidere con chi comunicare.
	+ Il SO non può sapere quando un'operazione IO è terminata, però può chiedere ai processori se è finita.
		+ Con gli interrupt questa cosa può essere gestita in maniera asincrona emettendo un interrupt per attirare l'attenzione del processore.
		+ Quando c'è un interrupt il SO si interrompe e viene eseguito il codice presente nel nucleo.
	+ Ad un interrupt possono essere attaccati diversi device che hanno natura simile.
		+ Si può pensare di gestire gli interrupt a livello.
		+ Alcuni che vengono gestiti in ritardo e altri no.
	+ Gli interrupt possono essere sia hardware che software.
		+ Quelli del software si chiamano trap.
		+ Essi sono dei segnali che vengono generati dal processore stesso per manifestare delle condizioni critiche.
			+ Ad esempio se faccio una divisione per 0, il processore genera un errore.
			+ Ci sono però anche casi di trap utili, ad esempio la trap placeholder utile per la memoria virtuale.
	+ Gli interrupt possono essere mascherati, ovvero ritardati.
		+ Si chiama così perché si usano dei registri in cui ogni bit rappresenta la rigidità di un livello di interrupt.
			+ Quindi si accende il bit relativo al livello di interrupt che ci interessa.
		+ Il mascheramento esiste perché ci sono dei momenti in cui non si vuole gestire il coordinamento di accesso a delle risorse condivise.
		+ Quando siamo in un sistema multiprocessore il mascheramento viene fatto per ogni processore.
			+ Fatto per non avere interrupt dello stesso tipo.
			+ Per fare mutua esclusione in sistemi multiprocessore servono gli _spin-lock_.
+ # Interrupt HW (Interrupt Normali)
	+ Eventi asincroni che possono avvenire in qualsiasi momento.
	+ Ad esempio:
		+ Clock.
			+ Scadenza del tempo di esecuzione di un processo, in modo che se questo è molto lento non prenda il monopolio sugli altri.
			+ Quando il tempo arriva a zero il processo viene sospeso.
		+ Dispositivi di IO.
			+ Per notifica di terminazione di una operazione IO.
+ # Interrupt SW (Trap)
	+ Eventi sincroni causati dal programma.
	+ Il controllo passa al sistema operativo.
	+ Ad esempio:
		+ Errori come la divisione per 0.
		+ Syscall.
+ # Cosa Succede In Seguito Ad Un Interrupt
	+ Un segnale di `interrupt request` viene spedito al processore.
	+ Il processore:
		+ Il processore nella sua vita esegue il ciclo _Fetch-Decode-Execute_.
		+ Quando inizia da capo, il processore si domanda se è presente un interrupt.
			+ Il processore deve interrompere senza che nulla vada perduto.
		+ Se è presente, quindi, sospende le operazioni e salta ad un particolare di memoria contenente la routine di gestione dell'interrupt.
			+ Questa routine viene chiamata _Interrupt Handler_.
			+ Essa gestisce nel modo opportuno l'interrupt.
			+ Essa poi ritorna il controllo al processo interrotto, o ad un altro processo nel caso di scheduling.
		+ Una volta che il processore riprende l'esecuzione da dove ha interrotto, tutto continua normalmente come se nulla fosse successo.
	+ Gli interrupt si comportano come se fossero una chiamata a funzione che avviene quando non lo sappiamo, ed è quindi nascosta.
		+ Quando arriva un interrupt, il controllo passa al kernel e una volta che l'interrupt è stato risolto il processo ritorna ad avere il controllo.
			+ In questo modo, dal punto di vista del processore, una volta che l'interrupt è terminato il processore passa normalmente all'istruzione successiva, solamente con un tempo di passaggio da un'istruzione all'altra maggiore.
	+ Quindi ci sono questi passaggi, relativi al processore:
		1. Un segnale di `interrupt request` viene spedito alla CPU.
		2. La CPU finisce l'esecuzione dell'istruzione corrente.
		3. La CPU verifica la presenza di un segnale di interrupt.
			+ Se l'interrupt è mascherato si salta questo passaggio e si continua l'esecuzione.
		4. Preparazione al trasferimento di controllo dal programma all'interrupt handler.
			+ Il primo metodo è quello di salvare i registri critici.
				+ Viene salvato il minimo indispensabile, quindi oltre al [[Registri#^b1a012||program counter]] viene salvato anche il registro di stato.
			+ Il secondo è quello dello scambio di stato.
				+ Viene fatto il salvataggio completo dello stato del processore.
				+ Si fa la fotografia di tutti i processori e la si mette in un buffer insieme a quelle degli altri processori.
		5. Selezione dell'interrupt handler appropriato.
			+ Interrupt handler unico.
			+ Interrupt handler diversi.
			+ Interrupt handler per ogni livello degli interrupt.
		6. Caricamento del program counter con l'indirizzo iniziale dell'interrupt handler assegnato.
			+ Insieme al caricamento del device driver, viene settato anche il modo kernel.
			+ Mentre i processi utente sono in modo _user_, quindi accedono solo alla memoria assegnata, quando viene incaricato il device driver il sistema passa in kernel mode e quindi può usufruire di tutta la memoria presente all'interno del sistema.
			+ In questa modalità viene eseguito solamente codice presente nel SO.
		7. Salvataggio dello stato del processore.
		8. Gestione dell'interrupt.
		9. Ripristino dello stato del processore.
			+ Operazione inversa alla numero 7.
		10. Ritorno del controllo al processo in esecuzione, o ad un altro processo se necessario.
	+ I sistemi operativi moderni vengono chiamati _interrupt driven_, in quanto sono guidati dagli interrupt.
		+ Hanno quindi un ruolo centrale.
+ # Interrupt Multipli
	+ Quello di prima riguardava la gestione di un solo interrupt.
	+ Se durante la gestione di un interrupt avviene un interrupt?
		+ Si possono sequenzializzare gli interrupt (disabilitazione degli interrupt).
			+ Quindi prima finisco uno e poi inizio l'altro.
			+ L'ultimo ad arrivare viene sospeso per essere gestito in seguito.
				+ Quindi quando viene eseguita l'istruzione successiva alla risoluzione del primo interrupt, si esegue l'altro interrupt, quindi _punto 4_.
			+ Questo approccio e semplice ma non tiene conto della priorità degli interrupt.
		+ Oppure si possono annidare l'esecuzioni degli interrupt.
			+ Si gestiscono prima quelli con priorità maggiori e poi quelli con priorità minori.
			+ Approccio più complesso in quanto richiedono stack separati.
				+ Lo _stack di valutazione_ dei processi è una struttura dati usati per gestire le chiamate a funzione e le chiamate a funzione nidificate.
					+ Record di attivazione.
					+ Quando c'è un interruzione lo stato dello stack deve rimanere invariato.
				+ Quando si nidificano gli interrupt mi serve un altro stack separato.
					+ Lo stato delle chiamate di funzione del livello precedente deve rimanere intoccato, in modo che quando si ritorna al livello precedente si possa continuare l'esecuzione nel modo corretto come si era lasciata all'inizio.
+ # Comunicazione Fra Processore E Dispositivi IO
	+ Il controller governa il dialogo con il dispositivo fisico.
	+ Vi sono due modalità possibili:
		1. Programmed IO (obsoleto):
			+ Operazione di input: ...
		2. Interrupt driven IO:
			+ Operazioni di input:
				+ La CPU carica, tramite il bus, i parametri della richiesta di input in appositi registri del controller, chiamati registri di comando.
				+ Il SO sospende l'esecuzione del processo che ha eseguito l'operazione di input ed esegue un altro processo.
				+ Il dispositivo:
					+ Esegue la richiesta.
					+ Il risultato dell'operazione viene memorizzato in un apposito buffer locale sul controller.
					+ Il completamento dell'operazione viene segnalato attraverso l'interrupt.
				+ Al ricevimento dell'interrupt, la CPU copia i dati dal buffer locale del controller alla memoria.
				+ L'input segnala la fine dell'operazione di IO.
+ # Direct Memory Access (DMA) ^11bc48
	+ IL SO:
		+ Attiva l'operazione di IO specificando l'indirizzo in memoria fisica di destinazione (input) o di provenienza (output) dei dati.
		+ Il controller del dispositivo prende (output) o pone (input) i dati per l'operazione di IO direttamente dalla memoria generale.
		+ L'interrupt specifica la terminazione dell'operazione.
+ # Memoria Centrale (RAM)
	+ Assieme ai registri, è l'unico spazio di memorizzazione che può essere acceduto direttamente dal processore.
	+ Accesso tramite istruzioni LOAD/STORE.
	+ Volatile.
	+ Nei sistemi moderni accesso tramite MMU, ovvero una funzione che traduce gli indirizzi logici in indirizzi fisici.
		+ Essa è configurata in modo che nel suo codominio ci siano solamente degli indirizzi leciti.
	+ È presente anche la ROM ovviamente, che però interessa meno ai progettisti di sistemi operativi.
		+ È una memoria non volatile che serve per inizializzare il sistema.
+ # Memory Mapped IO
	+ Questi dispositivi non hanno comandi READ/WRITE ecc.
		+ Quindi non hanno i device register per dare gli ordini.
	+ Semplicemente essi definiscono un intervallo di indirizzi per dialogare con questi dispositivi.
		+ Ad esempio un video grafico nei PC.
		+ Non ci sono comandi di ACCENSIONE/SPEGNIMENTO pixel, ma semplicemente c'è un indirizzo nel bus dove si trova l'area di memoria dove è contenuta la matrice dell'immagine.
+ # Dischi
	+ Operazioni:
		+ _READ_ (head, sector).
		+ _WRITE_ (head, sector).
			+ Le operazioni sopra prevedono l'attesa della rotazione del disco.
		+ _SEEK_ (cylinder).
			+ Corrisponde allo spostamento fisico del pettine di testine da un cilindro ad un altro ed è normalmente più costosa a livello di tempo.
+ # SSD
	+ Dispositivo per la memorizzazione non volatile dei dati.
	+ Hanno un numero di cicli di scrittura limitato.
	+ Si leggono a blocchi.
	+ Si scrivono a banchi, ovvero in numerosi blocchi.
- # Cache
	+ Memoria che tiene un sottoinsieme di una memoria principale $x$, in modo da velocizzare gli accessi alla memoria $x$.
	+ La cache della CPU non si vede fisicamente, in quanto viene messa nello stesso circuito integrato.
	+ Si guarda prima se il dato è presente in cache, in modo da non dover accedere in maniera diretta alla memoria principale.
		+ In questo modo le operazioni si velocizzano.
		+ Essa però non è a costo zero.
			+ Cosa metto in cache e cosa no?
				+ Occorre mettere in cache ciò che è utile, ma come definirlo?
				+ Teoricamente esisterebbe un concetto di utile perfetto, ovvero nella cache ci deve stare tutto quello che accederemmo nel futuro più prossimo.
				+ Quindi bisogna approssimare questa informazione, ad esempio guardando gli accessi passati e inserendo in cache i dati più frequenti.
			+ Problemi di coerenza.
				+ La cache è relativa al processore, quindi se ci sono più processori bisogna capire a chi appartiene cosa.
+ # Protezione Hardware
	+ Bisogna evitare che i processi generino interferenze non previste, ma soprattutto che i processi utente non interferiscano con il sistema operativo.
	+ ## Modo utente/Modo kernel:
		+ Si tratta di un bit --> acceso = kernel, spento = user.
		+ In modalità kernel i processi hanno accesso a tutte le istruzioni, incluse quelle privilegiate, che permettono di gestire totalmente il sistema.
			+ Ad esempio disabilitare gli interrupt
			+ Chiamato anche modo supervisore, o in intel viene chiamato ring...
		+ In modalità user i processi hanno accesso limitato alla memoria.
	+ Alla partenza il processore è in modalità kernel.
	+ Viene caricato il sistema operativo (bootstrap) e si inizia ad eseguirlo.
	+ Quando passa il controllo ad un processo utente, il SO cambia i valore del bit e il processore passa in modalità utente.
	+ Tutte le volte che avviene un interrupt, l'hardware passa da modalità utente a modalità kernel.
		+ Quando viene caricato interrupt handler, esso accende nuovamente il bit kernel.
	+ Le istruzioni di IO devono essere considerate privilegiate.
		+ Ad esempio accesso al dispositivo di memoria secondaria che ospita un file system.
- # Link Utili:
	- 














