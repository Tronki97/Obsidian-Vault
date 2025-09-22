---
tags: []
aliases:
  - problema di massimo
  - problema di minimo
  - problema vuoto
  - problema illimitato
  - problema di decisione
  - problema di certificato
  - da ottimizzazione a decisione
data: "`2025-02-23 17:03`"
---
- # # Problemi di ottimizzazione:
	+ La _ricerca operativa e l'ottimizzazione combinatoria_ hanno come _oggetto di studio le metodologie a supporto delle decisioni_.
	+ I problemi di ottimizzazione riguardano sempre _situazioni in cui occorra massimizzare i ricavi e profitti o minimizzare i costi o perdite_, in presenza di risorse limitate.
	+ Un problema $\mathcal{P}$ viene descritto:
		+ dando l’insieme delle soluzioni ammissibili $\mathbb{F}_{\mathcal{P}}$ 
		+ specificando la _funzione obiettivo_:
			+ $$c_{\mathcal{P}}: \mathbb{F}_\mathcal{P} \to \mathbb{R}$$
			+ che misura il _costo_ o il _beneficio_ di ogni soluzione ammissibile.
	+ ## Problema di massimo:
		+ consiste nel determinare il valore:
			+ $$Z_{\mathcal{P}}= max\{c_{\mathcal{P}}(g)|g\in \mathbb{F_{\mathcal{P}}}\}$$
	+ ## Problema di minimo: ^b8bf5e
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
		+ ### Problema illimitato: ^1429ac
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
				+ se $\mathcal{P}$ è di _minimo_ altrimenti duale:
	- 
- # Link Utili:
	- 