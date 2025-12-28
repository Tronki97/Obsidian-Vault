---
tags:
aliases:
  - normalizzazione sulle entità
  - normalizzazione sulle associazioni
data: "`2025-12-27 18:00`"
---
- # Intro:
	- La normalizzazione può essere usata nel [[Design logico]] per controllare lo schema della relazione finale
	- Può anche essere usato durante la fase di design [[modello dati concettuale||concettuale]] per verificare la qualità dello [[modello dati concettuale|schema concettuale]] 
- # Normalizzazione sulle entità:
	- ![[Pasted image 20251227175057.png|500]]
	- Ciò viola la Forma normale a causa della dipendenza: $VAT num \to RetailerName\ Address$
	- Si può quindi scomporre usando questa dipendenza.
		- ![[Pasted image 20251227175248.png|500]]
- # Normalizzare sulle associazioni:
	- ![[Pasted image 20251227175328.png|500]]
		- A causa della dipendenza $Professor \to Dept$ non è in [[Normalizzazione#^28cbaa|3NF]] quindi si può scomporre usandola
			- ![[Pasted image 20251227175547.png|500]]
	- ## Analisi ulteriore:
		- Se ci si basa sulle [[Normalizzazione#^f90483|D.F]]: $Student \to Degree$ e $Student \to Professor$ `Thesis` sarebbe in [[Normalizzazione#^3f92c9|BCNF]]
		- Le due proprietà sono indipendenti 
		- Si può scomporre ulteriormente:
			- ![[Pasted image 20251227175838.png|500]]
			- ![[Pasted image 20251227175916.png|500]]
- # Link Utili:
	- 