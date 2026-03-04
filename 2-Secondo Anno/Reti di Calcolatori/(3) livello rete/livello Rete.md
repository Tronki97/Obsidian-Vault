---
tags: []
aliases: 
data: "`2024-10-23 13:23`"
---
- # Livello rete:
	- si trova al terzo livello delle [[Architettura standard dei protocolli]] 
	- le reti locali sono connesse in modo gerarchico basati sui _router_ che le gestiscono e fanno da tramite per comunicare con altre reti locali staccate. 
	- il _router_ utilizza delle tabelle di instradamento per poter inoltrare i dati da inviare alle altre reti.
		- address resolution Protocol: converte i Mac address in IP e viceversa.
		- aggiornare queste tabelle si chiama _routing_
	- i dati vengono inviati _frammentati_ 
- # IP:
	- _Internet protocol_, sul quale avviene la comunicazione di internet. 
	- fornisce degli _indirizzi_ alle reti locali 
	- _IPv4_: usata fino ad ora [[Indirizzamento IPv4]]
	- _IPv6_: quello che si userà in futuro, visto che si necessitano di più indirizzi IP ($2^{128}$) [[IPv6 e tunneling IPv4]]
- # Rete GARR
	- infrastruttura di comunicazione per reti pubbliche: pubblica amministrazione, istituti di ricerca.
- # Link Utili:
	- https://gins.garr.it/Statistics/x_siteservice_select.php