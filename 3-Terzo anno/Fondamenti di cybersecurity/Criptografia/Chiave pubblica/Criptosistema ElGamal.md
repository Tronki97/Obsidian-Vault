---
tags:
aliases:
data: "`2026-03-30 18:00`"
---
- Ha scemi di criptazione basati sul [[Key exchange#^2547b3|Protocollo Diffie-Hellman]] 
- # Generazione chiavi:
	- _Bob_ sceglie un numero primo $p$ e un numero $g$ [[Logaritmo discreto#^fb68a4|radice primitiva]] _modulo_ $p$
		- ovvero per ogni intero $a$ coprimo a $p$ c'è un intero $k$ tale che $g^{k}=a\mod p$
	- si sceglie poi un esponente random $a\in [0,p-2]$ 
	- si calcola $A=g^{a}\mod p$
	- la chiave pubblica sarà quindi $K_{B}^{+}=(p,g,A)$
	- la chiave privata invece: $K_{B}^{-}=a$
- # Criptazione:
	- Alice deve mandare il messaggio $m$ ($0\le m<n$) a _Bob_
		- alice conosce $(p,g,A)$
	- sceglie un esponente random $b\in [0,p-2]$
	- calcola $B=g^{b}\mod p$
	- calcola $c=A^{b}*m\mod p$
	- il ciphertext completo è $(B,c)$ che verrà quindi mandato a _Bob_
- # Decriptazione:
	- _Bob_ riceve il messaggio $(B,c)$ da _Alice_
	- calcola quindi $x=p-1-a$
	- calcola poi $m=B^{x}*c \mod p$
- # caratteristiche:
	- il ciphertext risulta lungo 2 volte il plaintext ottenendo quindi una _espansione del messaggio_ e risulta essere uno svantaggio del criptosistema
	- la sicurezza è legata alla difficolta di calcolare il [[Logaritmo discreto]] 
- # Link Utili:
	- 