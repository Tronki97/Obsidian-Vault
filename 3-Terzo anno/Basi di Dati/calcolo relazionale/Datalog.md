---
tags:
aliases:
data: "`2025-10-13 20:06`"
---
- # Datalog:
	- Linguaggio di programmazione ad alto livello 
	- ## predicati intensionali:
		- Definiscono le relazioni 
	- ## predicati estensionali:
		- Rappresentano le [[Viste]]
	- ## Regole:
		- $$head \leftarrow body$$
			- _head_: vengono definiti i predicati intensionali
			- _body_: congiunzione di predicati atomici
			- Le interrogazioni sono congiunzioni di predicati atomici con prefisso "?"
	- ## ES:
		- Ritornare il nome e numero del capo avente tutti i dipendenti che guadagnano più di 40:
		- Si necessita della negazione
			- ![[Pasted image 20251013200926.png|600]]
		- Ed infine diventa:
			- `? CHIEFSOFONLYRICHER(Number: c, Name: n)`
	- ## potere espressivo:
		- Datalog Senza la ricorsione e negazione è espressivo quanto il [[Calcolo relazionale]] senza negazione e quantificatori universali
		- Datalog Senza la ricorsione ma con negazione è espressivo quanto l' [[Algebra relazionale]] e il [[Calcolo relazionale]]
		- Datalog con la negazione è più espressivo del _calcolo e l'algebra relazionale_
- # Link Utili:
	- 