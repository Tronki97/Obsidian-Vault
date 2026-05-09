---
tags:
aliases:
data: "`2026-05-07 10:46`"
---
- # Criptografia Simmetrica
	- _confidenzialità_
	- Si usa una sola chiave sia per il mittente che per il destinatario per far si che ciò che viene mandato sul canale non venga intercettato e letto da un terzo.
		- ![[Pasted image 20260220112245.png|500]]
		- $m:$ plaintext
		- $c:$ messaggio cifrato
		- $E:$ algoritmo di criptazione
		- $D:$ algoritmo di decriptazione
		- $E,D$: cifrario 
			- Si usano sempre cifrari con algoritmi conosciuti e quindi _mai usare quelli proprietari_.
		- La chiave condivisa ha però bisogno appunto di essere condivisa tra i due quindi prima della comunicazione _c'è bisogno di usare un protocollo per scambiare questa chiave simmetrica_ ([[Key exchange]])
	- Si possono generare dei MAC (_message authentication code_) usando le chiavi simmetriche per garantire quindi che il messaggio inviato sia autentico.
		- Inviando quindi: $K_{s}(H(m),m)$
	- ## Casi d'uso:
		- ### Chiave singola:
			- Ci sono scenari in cui la chiave $K_{s}$ va rigenerata ogni volta avendo quindi una chiave diversa per ogni messaggio
		- ### Multi-uso:
			- La stessa chiave viene usata diverse volte, e necessita l'utilizzo in combo con il _nonce_ o un _initialisation vector (IC)_  
- # Link Utili:
	- 