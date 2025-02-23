---
tags:
  - TODO
aliases: 
data: "`2025-02-17 20:26`"
---
- # Problemi Di Ottimizzazione:
	- La _ricerca operativa e l'ottimizzazione combinatoria_ hanno come _oggetto di studio le metodologie a supporto delle decisioni_.
	+ I problemi di ottimizzazione riguardano sempre _situazioni in cui occorra massimizzare i ricavi e profitti o minimizzare i costi o perdite_, in presenza di risorse limitate.
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
	+ Un esempio di descrizione di un'istanza di un problema e' il seguente: $$5x^{2}-6x+1=0 \implies \begin{array}{align} \mathbb{G}=\mathbb{R} \\ \mathbb{F}_{\mathcal{p}} = \{x\in\mathbb{R}\ | \ 5x^{2}-6x+1=0\}\end{array}$$
+ # Problemi di ottimizzazione:
	+ un problema $\mathcal{P}$ viene descritto:
		+ dando l’insieme delle soluzioni ammissibili $\mathbb{F}_{\mathcal{P}}$ 
		+ specificando la _funzione obiettivo_:
			+ $$c_{\mathcal{P}}: \mathbb{F}_\mathcal{P} \to \mathbb{R}$$
			+ che misura il _costo_ o il _beneficio_ di ogni soluzione ammissibile.
	+ ## Problema di massimo:
		+ consiste nel determinare il valore:
			+ $$Z_{\mathcal{P}}= max\{c_{\mathcal{P}}(g)|g\in \mathbb{F_{\mathcal{P}}}\}$$
	+ ## Problema di minimo:
	    + consiste nel determinare il valore: 
		    + $$Z_{\mathcal{P}}= min\{c_{\mathcal{P}}(g)|g\in \mathbb{F_{\mathcal{P}}}\}$$
	+ ad ogni problema di massimo $\mathcal{P}$ ne corrisponde uno di minimo $\mathcal{P}'$ t.c: $c_\mathcal{P'}=-c_\mathcal{P}(g)$ infatti:
		+ $$Z_\mathcal{P}=-min\{c_{\mathcal{P'}}(g)|g\in \mathbb{F_{\mathcal{P}}}=\mathbb{F}_\mathcal{P'}\}$$
	+ dato $\mathcal{P}, Z_\mathcal{P}$ è detto _valore ottimo_ per $\mathcal{P}$
	+ dato $\mathcal{P}$ un $g^{*}\in \mathbb{F}_\mathcal{P}:Z_\mathcal{P}=c_\mathcal{P}(g^{*})$ è detto _soluzione ottima_.
	+ ## ES:
		+ $\mathbb{G}=\mathbb{R}$
		+ $\mathbb{F}_{\mathcal{P}}=\{x\in\mathbb{R}\ | \ 5x^{2}-6x+1=0\}$
		+ $c_{\mathcal{P}}: \mathbb{R}\to \mathbb{R}$,  $c_{\mathcal{P}}(g)=g^{2}$
		+ $Z_{\mathcal{P}}= max\{x^{2}|5x^{2}-6x+1=0\}$
		+ soluzione ottima? valore ottimo?
	+ ## Casi:
		+ ### Problema vuoto:
			+ $\mathbb{F_\mathcal{P}}=\emptyset$ e si assume per convenzione che $Z_\mathcal{P}=\infty$
			+ Non è detto sia triviale rilevarlo.
		+ ### Problema illimitato:
		    + nel caso di problema di massimo, $\forall x\in \mathbb{R}\ \ \exists g\in \mathbb{F}_\mathcal{P}$ con $c_\mathcal{P}(g)\geq x$. in questo caso $Z_\mathcal{P}=\infty$ 
		    + Dualmente nel caso di problema di minimo.
		+ ### Valore Ottimo Finito, ma non Soluzione Ottima Finita.
			+ $Z_\mathcal{P}$ esiste finito ma $c_\mathcal{P}(g)\ne Z_\mathcal{P} \ \forall g$
			+ #### ES:
				+ $inf\{x|x>0\}$
				+ questi casi verranno evitati.
	+ ## Problema di decisione:
		+ consiste nel determinare una qualunque $g\in \mathbb{F_\mathcal{P}}$ oppure concludere che il problema è vuoto.
		+ dato questo tipo di problema è sempre possibile vederlo come un problema di ottimizzazione.
	+ ## Problema di certificato:
		+ dato un problema di decisione $\mathcal{P}$, il relativo _problema di certificato_ per $\mathbb{G}\supseteq\mathbb{F}_{\mathcal{p}}$ consiste nel dire se $g\in \mathbb{F_\mathcal{P}}$, data $g\in \mathbb{G}$ 
	+ ## Da ottimizzazione a decisione:
		+ dato $\mathcal{P}$ di _ottimizzazione_:
			+ si considera $\mathcal{R}$ _decisionale_ t.c:
				+ $$\mathbb{F}_\mathcal{R}=\{g\in \mathbb{F}_\mathcal{P}| c_\mathcal{P}(g)=Z_\mathcal{P}\}$$
			+ dato $x\in \mathbb{R}$ si può anche considerare $\mathcal{R}_{k}$ _Decisionale_ con:
				+ $$\mathbb{F}_{\mathcal{R}_{k}}=\{g\in \mathbb{F}_\mathcal{P}|c_\mathcal{P}(g)\le k\}$$
				+ se $\mathcal{P}$ è di _minimo_ altrimenti duale
+ # Algoritmi:
	+ ## Algoritmo esatto:
		+ un _algoritmo esatto_ per $\mathcal{P}$ è un algoritmo che preso in input un'istanza di $\mathcal{P}$ restituisce una soluzione ottima $g^{*}$ _se esiste_
			+ questo algoritmo garantisce una soluzione esatta ma ha una [[Complessità computazionale]] troppo alta
	+ ## Algoritmo euristico:
		+ determina una qualsiasi soluzione ammissibile e quindi calcola implicitamente:
			+ un’approssimazione _superiore_ (se è un problema di minimo)
			+ un’approssimazione _inferiore_ (se è un problema di massimo).
		+ del valore ottimo.
	+ ## Qualità:
		+ per come sono fatti questi algoritmi, potrebbero concludere che non esiste una soluzione ammissibile anche se $\mathbb{F}_{\mathcal{P}}\ne \emptyset$
		+ Dato $\mathcal{P} \wedge g\in \mathbb{F}_\mathcal{P}$ definisco:
			+ #### Errore assoluto di g:
				+ la quantità: $\mathcal{E_P}(g)=|c_\mathcal{P}(g)-Z_\mathcal{P}|$
			+ #### Errore relativo di g: 
				+ la quantità: $\mathcal{R_{P}}(g)=\frac{\mathcal{E_P}(g)}{|Z_\mathcal{P}|}=\frac{|c_\mathcal{P}(g)-Z_\mathcal{P}|}{|Z_\mathcal{P}|}$
		+ Una soluzione g si dice $\epsilon$-ottima se $\mathcal{R_{P}(g)\leq}\epsilon$
		+ Un algoritmo si dice $\epsilon$-approssimato se restituisce una soluzione $\epsilon$-ottima.
	+ ## Rilassamenti:
		+ Talvolta anche calcolare l’errore diventa problematico, e quindi si procede risolvendo un problema che è un’_approssimazione_ del problema di partenza.
		+ dato $\mathcal{P}$ di minimo, un _rilassamento_ di $\mathcal{P}$ è un qualunque problema $\overline{\mathcal{P}}$ definito come:
			+ $$min\{c_{\overline{\mathcal{P}}}(g)|g\in \mathbb{F_{\mathcal{P}}}\}$$
			+ 
- # Link Utili:
	- 