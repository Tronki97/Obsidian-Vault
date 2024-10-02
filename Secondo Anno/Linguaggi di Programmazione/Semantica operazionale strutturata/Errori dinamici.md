---
tags: 
aliases:
  - runtime
  - errori a runtime
date: 2024-10-02
---
- # Errori dinamici(a runtime):
	- $\Gamma'=\Gamma \cup \{err\}$      $T'=T\cup\{err\}$
	- $eval: \ Exp \times Store \to \mathbb{N}\cup{err}$
	- $eval_{b}: Bexp\times Store \to \Pi  \cup \{err\}$
	- $exec: Com \times Store$ parziale in $Store\cup \{err\}$ 
	- ### Regola per generare "errore"
		- ![[Pasted image 20241002215613.png]]
	- ### Regole per propagare l'errore(in $Exp$)
		- ![[Pasted image 20241002215653.png]]
	- ### Regole per propagare l'errore(in $Bexp$)
		- ![[Pasted image 20241002215740.png]]
		- per _Eq_ (Eq4 e Eq5) sono analoghe a quelle precedenti
	- ### Propagatori di errore (in $Com$)
		- ![[Pasted image 20241002215902.png]]
	- Tutti questi errori riguardano solo l'errore dinamico di _sub4_ che _è l'unico ammesso in questo nostro linguaggio_. Altri che potrebbero aggiungersi in un linguaggio più esteso sono:
		- _divisione per zero, radice di un negativo, ecc..._ 
- # Link Utili:
	- 