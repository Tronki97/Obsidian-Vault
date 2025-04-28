---
tags: 
aliases:
  - algoritmo esatto
  - algoritmo euristico
  - qualità di un algoritmo
  - rilassamenti
data: "`2025-02-23 17:04`"
---
- # # Algoritmi:
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
	+ ## Rilassamenti: ^184b6f
		+ Talvolta anche calcolare l’errore diventa problematico, e quindi si procede risolvendo un problema che è un’_approssimazione_ del problema di partenza.
		+ dato $\mathcal{P}$ di minimo, un _rilassamento_ di $\mathcal{P}$ è un qualunque problema $\overline{\mathcal{P}}$ definito come:
			+ $$min\{c_{\overline{\mathcal{P}}}(g)|g\in \mathbb{F_{\overline{\mathcal{P}}}}\}$$
			+ $\mathbb{F_{\overline{\mathcal{P}}}} \supseteq \mathbb{F}_\mathcal{P}$ e $\forall g \in \mathbb{F}_\mathcal{P} . \ \ c_{\overline{\mathcal{P}}}(g)\leq c_{\mathcal{P}}(g)$ 
				+ la situazione è duale per i problemi di massimo
			+ Il valore $Z_{\overline{\mathcal{P}}}< Z_\mathcal{P}$
		+ ### OSS:
			+ si può osservare che i rilassamenti ammettono spesso soluzioni algoritmiche di complessità inferiore.
			+ se la soluzione ottima $g^{*}$ di $\overline{\mathcal{P}}$ soddisfa $g^{*}\in F_\mathcal{P} \wedge c_{\overline{\mathcal{P}}}(g^{*})= c_{\mathcal{P}}(g^{*})$ allora:
				+ $$c_{\overline{\mathcal{P}}}(g^{*})=Z_{\overline{\mathcal{P}}}\le Z_{\mathcal{P}}\le c_{\mathcal{P}}(g^{*})=c_{\overline{\mathcal{P}}}(g^{*})$$
- # Link Utili:
	- 