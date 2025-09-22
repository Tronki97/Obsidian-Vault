---
tags: []
aliases:
  - tunneling IPv4
  - tunneling
data: "`2024-11-22 13:51`"
---
- # IPv6:
	- utilizzato perché permette di avere $2^{128}$ indirizzi diversi.
	- è stato aggiunto nel pacchetto una sequenza di bit che indicano la priorità di certi pacchetti dati.
	- creano delle code con priorità diversa separando per esempio i pacchetti in base alla velocità.
	- elimina la frammentazione a livello rete dei pacchetti:
		- quindi ci sono meno pacchetti da gestire
		- però la frammentazione viene messa ad un altro livello. 
- # Tunneling:
	- spedire pacchetti IPv6 in “buste” IPv4 che però risulterà appunto IPv6 e il router rilevando questo fatto lo spedirà nell’internet IPv6