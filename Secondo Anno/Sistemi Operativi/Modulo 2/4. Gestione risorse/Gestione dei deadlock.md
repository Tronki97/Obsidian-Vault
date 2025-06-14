---
tags: []
aliases:
  - detection
  - recovery
  - knot
  - prevention
  - avoidance
  - allocazione gerarchica
data: "`2025-03-13 15:46`"
---
- # Detection and recovery:
	- Si mantiene aggiornato il grafo di Holt con tutti gli assegnamenti, le kill dei [[Concorrenza#^68dcd8|processi]] e le richieste di [[Gestione risorse#^d3013b|risorse]].
	- ## Teorema:
		- Se le risorse rispettano le [[Gestione risorse#^c336f6|condizioni di deadlock]] esso avviene sse il [[Gestione risorse#^6ffbfd|grafo di Holt]] contiene un ciclo.
	- ## Dim:
		- Utilizzo un _grafo Wait-For_ dove i nodi risorsa vengono eliminati e gli archi appropriati sono collassati.
		- ![[Pasted image 20250307113501.png|500]]
		- Se il grafo Wait-For contiene un ciclo allora anche quello di Holt associato ne avrà uno e quindi c’è [[Proprietà di un programma#^2a9ed1|deadlock]] perché indica che è presente l’attesa circolare.
	- ## N.B:
		- Tuttavia se in una classe è presente più di una risorsa allora la presenza di un ciclo non è condizione sufficiente per avere [[Proprietà di un programma#^2a9ed1|deadlock]].
	- ## Teorema di detection con grafo:
		- Se le risorse rispettano le condizioni di deadlock, lo stato _non è di deadlock_ sse il grafo di Holt è completamente riducibile.
		- Ovvero esiste una sequenza di passi di riduzione che elimina tutti gli archi del grafo
		- ### ES:
			- ![[Pasted image 20250315111414.png|300]]
			- Rimuovo l’assegnamento delle risorse a $p$ che quindi vengono assegnate ad $r$ 
			- ![[Pasted image 20250315111442.png|300]]
			- Rimuovo poi tutte le risorse assegnate ad $r$ che vengono assegnate a $q$ ed $s$
			- ![[Pasted image 20250315112325.png|300]]
			- Rimuovo le risorse assegnate a $q$ senza riassegnarle perché non ci sono processi che le richiedono.
			- ![[Pasted image 20250315112544.png|300]]
			- Infine riduco completamente deallocando tutte le risorse assegnate a $s$ ottenendo quindi un grafo completamente ridotto.
			- ![[Pasted image 20250315112651.png|300]]
			- _ciò implica che non è presente deadlock_.
	- ## Knot:
		- Dato un nodo $n$ l’insieme dei nodi raggiungibili da $n$ viene detto _insieme di raggiungibilità_ di $n$ scritto ($R(n)$)
		- Un _knot_ del grafo $G$ è un sottoinsieme di nodi $M$ tali che $\forall n \in M| R(n)=M$ 
		- ![[Pasted image 20250313152008.png]]
		- $\{b,c,d\}$ è un _knot_ 
	- ## Teorema:
		- Dato un grafo di Holt con una sola richiesta sospesa per processo, le risorse rispettano le condizioni allora si verifica deadlock sse esiste un _Knot_ nel grafo
	- ## Recovery:
		- Per uscire dal deadlock occorre eliminare i processi coinvolti nel deadlock con 2 modalità:
			- _manuale_: i processi coinvolti vengono uccisi manualmente 
			- _automatica_ ci pensa il  [[Sistema operativo]] secondo certe politiche.
		- E 2 meccanismi:
			- _terminazione totale_: terminare tutti i processi coinvolti.
			- _terminazione parziale_: terminare un processo alla volta fino a che non scompare il deadlock. 
		- ### Checkpoint:
			- Si fa una “fotografia” degli stati dei processi e quando si verifica deadlock si fa ripartire il sistema (_rollback_) dall’ultimo punto salvato.
			- Non sempre è possibile.
		- ### Considerazioni:
			- Terminare i processi però può essere costoso in termini di risorse e di tempo sprecato per l’esecuzione fino a quel momento di quel processo.
			- Inoltre terminare i processi può lasciare le risorse in uno stato problematico:
				- Come ad esempio se vengono terminati durante una [[Sezioni critiche (critical section)|sezione critica]]
- # Prevention/avoidance:
	- ## Prevention:
		- Evitare strutturalmente che si verifichi il deadlock eliminando quindi una delle 4 condizioni.
		- ### Evitare la [[Proprietà di un programma#^1acdf8|mutua esclusione]]:
			- Permettendo di condividere le risorse chiamato _spooling_ dove si fa finta di mandare la richiesta ad una “risorsa virtuale”, in modo che una volta finito di usare la risorsa li, viene mandata alla risorsa effettiva.
			- Effettivamente essendo un _buffer_.
			- Però questo metodo sposta il problema verso altre risorse e a volte non è implementabile
		- ### Evitare la “richiesta bloccante”:
			- ##### Allocazione totale
				- Si mandano tutte le richieste di risorse di un processo all’inizio della computazione.
				- I problemi sono che: la quantità di risorse necessarie possono non essere note all’inizio della computazione ed inoltre non c’è _parallelismo_.
		- ### Evitare “assenza di prerilascio”:
		- ### Evitare “attesa circolare”:
			- ##### allocazione gerarchica: 
				- ovvero si dividono le classi di risorse e ad ogni classe si associa una priorità e quindi un processo potrà allocare solo le risorse che hanno priorità maggiore a quelle che ha già allocato. 
				- E per allocarne una che non rispetta la condizione di priorità deve rilasciare tutte le risorse che ha in quel momento.
		- ### Problemi:
			- L’allocazione gerarchica è inefficiente ed inoltre l’indisponibilità di una risorsa  ad alta priorità ritarda processi che già hanno risorse ad alta priorità.
			- L’allocazione totale è anch’essa inefficiente e se un processo ha bisogno di una risorsa anche per poco tempo deve allocarla per tutta la sua vita.
	- ## Avoidance:
		- Prima di assegnare una risorsa il sistema calcola il modo per evitare che si verifichi il deadlock.
		- ### Algoritmo del Banchiere:
			- Usato appunto per evitare il deadlock.
			- Un banchiere che gestisce un gruppo di clienti a cui ha concesso del credito, non tutti i clienti avranno bisogno dello stesso quantitativo di credito nello stesso momento.
			- Ogni cliente dice in anticipo la quantità richiesta senza superare il capitale della banca.
			- I clienti fanno 2 transazioni: _Richiesta di prestito, Restituzione_.
			- I clienti possono anche fare richieste multiple sempre rimanendo nel limite massimo
			- Una volte che tutte le richieste sono state accolte il banchiere deve garantire la restituzione in un tempo finito.
			- #### Parametri:
				- $N$: numero di clienti.
				- $C$: capitale iniziale
				- $C_{i}$ quanto il cliente $i$ può chiedere al massimo.
				- $P_{i}$ denaro dato al cliente.
				- $n_{i}=c_{i}-p_{i}$ credito residuo del cliente $i$
				- $COH=C-\sum\limits_{i=1,...,N}P_{i}$ quantità di soldi che ha il banchiere al momento. 
			- #### Stato SAFE:
				- Sequenza che consente di valutare se la situazione attuale può consetire a tutti i processi di terminare.
				- Dato il $COH$ ce ne deve essere almeno 1 con $n_{i}=0$ quindi permettendo al processo di terminare e restituire le risorse con le quali soddisfare altri processi.
				- Si ha inoltre $s$ una [[Calcolo combinatorio|permutazione]] dei valori $1,...,N$ con $s[i]$ la posizione $i$ nella sequenza.
				- Inoltre si ha un vettore $avail$ calcolato in questo modo:
					- $avail[i]=COH$
					- $avail[j+1]=avail[j] + p_{s(j)}$ con $j=1,...,N-1$
				- In conclusione uno stato si definisce _SAFE_ se vale la condizione:
					- $$n_{s(j)}\le avail[j]\ \ \ \ \ j=1,...,N$$
			- #### Stato UNSAFE:
				- Condizione necessaria ma non sufficiente per avere deadlock.
		- ### Algoritmo del banchiere multi valuta:
			- Si suppone che si debba fare la richiesta di diversi tipi di valute.
			- I diversi tipi di valute rappresentano le varie [[Gestione risorse#^e7531f||classi di risorse]].
			- #### Parametri:
				- $N$ numero clienti 
				- $\overline{C}$ vettore dei capitali iniziali per ogni valuta.
				- $\overline{c_{i}}$ …
				- $\overline{p_{i}}$ …
				- $\overline{n_{i}}= \overline{c_{i}}-\overline{p_{i}}$ … per ogni valuta.
				- $\overline{COH}=\overline{C}-\sum\limits_{i=1,...,N}\overline{p_{i}}$ … per ogni valuta.
			- #### Stato SAFE:
				- Si ha una sequenza $s$ come prima e un vettore $\overline{avail}$ calcolato in questo modo:
					- $\overline{avail[i]}=\overline{COH}$
					- $\overline{avail[j+1]}=\overline{avail[j]} + \overline{p_{s(j)}}$ con $j=1,...,N-1$
				- Uno stato si definisce _SAFE_ se vale la condizione:
					- $$n_{s(j)}\le \overline{avail[j]}\ \ \ \ \ j=1,...,N$$
			- #### Teorema:
				- Se durante la costruzione di una sequenza si giunge ad un punto in cui nessun processo è soddisfacibile allora lo stato non è SAFE e non esiste nessuna sequenza che consente di soddisfare i processi.
			- #### Dim:
				- Per assurdo 
				- Suppongo che lo stato sia SAFE ovvero che esista la sequenza che consente di soddisfare i processi.
				- $C$ _la sequenza interrotta_ e $C'$ _la sequenza che porta allo stato SAFE_.
				- Sia $H$ un processo non appartenente alla sequenza $C$
				- Siano $C, C'$ le sequenze dei [[Concorrenza#^68dcd8|processi]] come nella figura:
					- ![[Pasted image 20250611120617.png|300]]
				- $H=\{p \in proc| p\notin C\}$
					- Con $h$ il primo elemento di $H$ che compare in $C'$
				- Tutti gli elementi di $C'$ prima di $h$ compaiono in $C$. Chiamiamo $C''$ il segmento iniziale di $C'$ fino al punto precedente l'applicazione di $h$.
				- Le risorse disponibili all'applicazione di $h$ in $C'$ sono $avail[C'']=COH+ \sum\limits_{j\in C''} p_{j}$ $h$ è quindi applicabile avendo $n\le avail(C'')$
				- Ma $avail(C)= COH+ \sum\limits_{j\in C} p_{j}$ quindi $avail(C)\le avail(C'')$ allora $h$ è applicabile alla fine di $C$ ma questo va contro all'ipotesi che $C$ non potesse continuare.
- # Ostrich algorithm:
	- Consiste nell’evitare di controllare per i deadlock e far finta che non si possano verificare.
	- Usato perché evitare i deadlock può essere costoso.
	- Usato nei sistemi UNIX e nelle JVM 
- # Link Utili:
	- 