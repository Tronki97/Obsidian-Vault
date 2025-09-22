---
tags:
aliases:
data: "`2024-09-19 12:06`"
---
- ## Strumenti automatici
	- Lex: genera analizzatori lessicali
	- Yacc: genera analizzatori sintattici
		- verifica che le cose siano scritte in modo corretto secondo le regole grammaticali
- ## Implementazione via kernel
	- per implementare $L$ si scrive un interprete o compilatore in $H$, sottoinsieme di $L$
		- $C^{H}_{L,Lo}$ compilatore scritto in $H$ che traduce $L$ in $Lo$
		- $I^{H}_{L}$ interprete in $L$
	- ### per implementare $L$
		- implemento opportunamente $H$
		- uso $H$ come linguaggio di implementazione
	- ### conseguenze:
		- Semplifica l'implementazione: il linguaggio $H$ è più vicino di $L$ a quello [[Linguaggio macchina||macchina]] 
		- facilita la portabilità: basta re-implementare $H$ nel nuovo linguaggio macchina. 
- ## Bootstrapping:
	- usare altri compilatori per compilare dei compilatori.