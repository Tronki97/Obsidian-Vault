---
tags: 
aliases:
  - AA
  - aa
data: "`2024-10-19 18:37`"
---
- # Def:
	- Azioni che vengono compiute in modo indivisibile: o tutto o niente
	- parallelismo reale $\to$ si garantisce che l'azione non interferisca con altri processi durante la sua esecuzione
	- parallelismo apparente $\to$ l'avvicendamento (_context-switching_) fra i processi avviene prima o dopo l'azione, che quindi non può interferire con essa.
	- le singole istruzioni del linguaggio macchina sono azioni atomiche
		- _parallelismo apparente_: l'interrupt viene eseguito prima o dopo un'istruzione, mai durante
		- _parallelismo reale_: la politica di arbitraggio del bus garantisce che una delle due venga servita per prima e l'altra successivamente 
- # Nel linguaggio C:
	- dipende dal processore e dal codice generato dal compilatore.
	- `a=0` con `int a` è normalmente atomico 
	- `a=0` con `long long a` richiede 2 azioni atomiche 
- # Nei compiti di concorrenza:
	- assumiamo che in ogni istante vi possa essere al massimo un accesso alla memoria alla volta
	- l'_unica cosa atomica che consideriamo è l'assegnamento di una costante a una variabile_
	- come notazione per azioni atomiche usiamo `< statement atomico >` 
- # Link Utili:
	- 