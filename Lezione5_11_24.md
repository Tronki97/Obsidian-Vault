---
tags:
  - TODO
  - linguaggi
aliases: 
data: "`2024-11-05 11:09`"
---
- # Argomento:
	- produzioni $\epsilon$
	- produzione unitaria:
		- del tipo $B\to B$ che possono creare dei cicli visto che vanno in dei NT 
	- simboli inutili:
		- T o NT che non sono raggiungubili dal simbolo iniziale o che non producono parole 
	- ricorsione sinistra:
		- $A\to A \alpha$ perché inadatte al [[Top-down Parsing]] 
	- fattorizzazione di grammatiche:
		- raggurppare diverse produzioni per rendere le grammatiche meno non deterministiche.
- # Semplificare:
	- eliminare 1:
		- voglio una $G'$ tale che $L(G')=L(G)-\{\epsilon\}$ 
		- per definire un algoritmo che la genera bisogna definire un simbolo annullabile :
			- $A\in NT: S \Rightarrow^{+} \epsilon$
		- bisogna calcolare tutti quelli appartenenti a quella grammatica
		- 
- # Link Utili:
	- 