---
tags:
aliases:
data: "`2025-10-01 17:20`"
---
- # # Informazioni parziali:
	- Non tutte le [[Modello dati relazionale#^e8f57b|tuple]] sono accettate dal sistema relazionale ma serve che abbiano un certo schema.
	- ## ES:
		- ![[Pasted image 20251001100202.png]]
		- Il _MidName_ è presente solo per una tupla.
	- ## Soluzioni:
		- Per modellare queste informazioni parziali non si dovrebbero usare dei valori specifici nel dominio (0, " ", "99", ...) in quanto potrebbero comunque venir usati per sbaglio in funzioni che richiedono valori di quel tipo:
			- Come medie matematiche
			- Questi dati definiti come "non rappresentabili" necessitano di essere tenuti traccia dal software 
		- Un altro modo più efficace è quello di aggiungere un valore al dominio che prima non era presente il valore _nullo_ (`NULL` value), ciò marca l'assenza di un valore atteso dal sistema
			- $t[A]$ per ogni valore di $A$ lo mappa o nel dominio o `NULL`
			- E si necessita di usare delle restrizioni specifiche per evitare che i valori `NULL` vengano messi in certi dati
		- ### Diversi tipi di NULL:
			- `unknown` 
			- `inexistant`
			- `uninformative`
- # Link Utili:
	- 