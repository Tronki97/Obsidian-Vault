---
tags: 
aliases:
  - processo decisionale
  - modelli
  - modelli analitici
  - modelli di simulazione
  - istanza di un problema
  - descrizione di un problema
data: "`2025-02-17 20:26`"
---
+ # Processo Decisionale
	+ Viene diviso in diversi _passi_:
		+ _1. Individuazione Del Problema_
		+ _2. Raccolta Dei Dati_
		+ _3. Costruzione Del Modello_
		+ _4. Determinazione Di Una O Più Soluzioni_
		+ _5. Analisi Dei Risultati_
	+ Queste passi _non devono necessariamente essere svolti in sequenza_.
		+ La ricerca operativa e l'ottimizzazione combinatoria si occupano in particolare delle fasi 3 e 4.
+ # Modelli
	+ Un _modello_ è una _descrizione astratta di un problema, scritta attraverso il linguaggio della matematica_.
	+ Vi sono tre _tipi differenti_ di modelli:
		+ ## Modelli Basati Su Giochi
			+ La _ricerca della soluzione viene vista come risultante dall'interazione tra due o piu' agenti_, ciascuno dei quali corrisponde ad una delle parti del gioco.
		+ ## Modelli Di Simulazione
			+ Il _problema viene studiato riproducendo il comportamento del sistema_ cui il problema si riferisce.
			+ La riproduzione si basa sulla _generazione di istanze casuali del problema_.
		+ ## Modelli Analitici
			+ Il _problema viene descritto attraverso un modello matematico_ il piu' possibile fedele alla situazione reale che si vuole rappresentare.
			+ Il _modello matematico deve essere sufficientemente astratto da permettere la determinazione di una soluzione in modo analitico_.
				+ In questo caso quindi si individua lo spazio in cui stanno le soluzioni.
					+ Dalla natura di questo spazio si determinano le soluzioni.
				+ Esse saranno le _vere soluzioni ottime_, e non saranno basate su istanze casuali del problema, in quanto questo viene trattato in maniera puramente matematica.
			+ Modellizzare richiede creatività e sensibilità nel passare dalla descrizione testuale al corrispondente modello matematico.
+ # Problema
	+ Si tratta di una _domanda espressa in termini generali_, ma la cui _risposta dipende da un certo numero di parametri e variabili_.
	+ Un problema $\mathcal{P}$ viene solitamente descritto tramite:
		+ ## Descrizione Dei Suoi Parametri E Variabili
		+ ## Descrizione Delle Caratteristiche Che Le Soluzioni Desiderate Devono Avere
+ # Istanza Di Un Problema
	+ Un'_istanza del problema $\mathcal{P}$ si ottiene specificando dei valori concreti per tutti i parametri del problema, ma non per le variabili_.
		+ Parametri e variabili non sono la stessa cosa, pertanto non vanno confusi.
		+ I parametri possono avere dei valori concreti, le variabili invece no.
			+ I parametri sono i dati del problema, e le variabili sono le incognite da ricavare.
	+ Ad esempio un problema può essere $ax^2+bx+c=0$ e un'istanza di esso può essere $5x^2+3x+1=0$.
- # Descrizione Di Un Problema
	+ Per descrivere un problema $\mathcal{P}$ _si costruisce un insieme $\mathbb{F}_{\mathcal{p}}$ delle sue soluzioni ammissibili_.
		+ Di solito _$\mathbb{F}_{\mathcal{p}}$ viene specificato dando $\mathbb{G}\supseteq\mathbb{F}_{\mathcal{p}}$ e descrivendo dei vincoli che un generico $g\in\mathbb{G}$ deve soddisfare per far parte di $\mathbb{F}_{\mathcal{p}}$_.
		+ Gli _elementi che appartengono a $\mathbb{G}-\mathbb{F}_{\mathcal{p}}$ sono detti soluzioni non ammissibili_.
	+ Talvolta, il problema consiste nel trovare una sola soluzione ammissibile, talvolta occorre andare oltre.
	+ Un esempio di descrizione di un'istanza di un problema è il seguente: $$5x^{2}-6x+1=0 \implies \begin{array}{align} \mathbb{G}=\mathbb{R} \\ \mathbb{F}_{\mathcal{p}} = \{x\in\mathbb{R}\ | \ 5x^{2}-6x+1=0\}\end{array}$$
+ # Dai problemi ai modelli:
	- individuato il problema occorre _classificarlo_ in modo da poterlo riconoscere come problema di un certo tipo e di conseguenza utilizzare algoritmi adatti per risolverlo efficientemente.
	- una categoria di problemi dello stesso tipo è detta _modelli_.
- # Link Utili:
	- 