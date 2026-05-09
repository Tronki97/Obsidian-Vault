---
tags:
aliases:
  - FP
  - FMIN-COVER
data: "`2026-04-28 18:56`"
---
- # FP:
	- _functional deterministic polynomial time_ 
	- ci stanno tutte quelle funzioni che possono essere calcolate da un _trasduttore deterministico in tempo polinomiale_ 
	- la somma di due interi è in questa classe siccome il problema non è di decisione. 
	- si possono inventare trasduttori ad [[Oracoli|oracolo]]:
		- il trasduttore fa un calcolo però si può prevedere che il trasduttore faccia delle richieste ad un oracolo.
		- sia $C$ una classe di complessità 
			- $$FP=\{f| f \text{ è calcolabile in P tramite l'utilizzo di un oracolo in C}  \}$$
	- ## ES:
		- si usa una variante di ricerca del linguaggio [[Oracoli#^ffb59a|MIN-COVER]]
		- $FMIN-COVER$ 
			- ci danno un grafo $G$ e bisogna calcolare la taglia dei [[Vertex Cover]] minimi.
			- si fa una chiamata ad un oracolo per l'esistenza di un vertex cover di taglia sempre crescente e si manda in output la taglia del vertex cover trovato 
			- $FMIN-COVER \in FP^{NP}$ in quanto l'oracolo interpellato è di un linguaggio, $VC$, appartenente a [[Classi di complessità#^488c5d|NP]] 
			- più nello specifico $FP^{NP[O(\log n)]}$ (tra parentesi quadre è indicato il numero di chiamate fatte all'oracolo del linguaggio in quella classe)
				- questo perché si potrebbe impiegare un ragionamento di ricerca binaria e quindi come prima cosa chiedere se $G$ ha un $VC$ di taglia al massimo $k=\frac{|V|}{2}$ e se è così allora la taglia del $VC$ più piccolo si troverà tra $0$ e $\frac{|V|}{2}$ ripetendo questo procedimento ad ogni iterazione finché l'intervallo di ricerca è un solo numero che sarà quindi il $VC$ di taglia minore 
				- detto ciò le chiamate all'oracolo fatte sono $O(\log |V|)$ 
- # Link Utili:
	- 