---
tags:
aliases:
  - bagging
  - feature randomness
data: "`2025-10-02 14:02`"
---
- # Idea:
	- Invece di fare un solo [[Alberi di decisione]] (modello) ne costruisco tanti 
	- Utilizzati con una tecnica _ensamble_
		- Un gran numero di modelli scorrelati che operano insieme forniscono risultati migliori rispetto ad un solo modello.
		- Il problema è che gli alberi sono deterministici quindi se si addestrano tutti sullo stesso set gli alberi risultanti saranno uguali
	- ## Bagging:
		- Si allenano i vari alberi su sottoinsiemi random dei dati in input
		- Garantendo modelli diversi ogni volta visto che gli alberi sono molto sensibili ai _training set_
	- ## Feature randomness:
		- A Ogni albero assegno un sottoinsieme random di feature 
		- Aumentando la robustezza della foresta, non privilegiando certe feature rispetto ad altre
- # Link Utili:
	- 