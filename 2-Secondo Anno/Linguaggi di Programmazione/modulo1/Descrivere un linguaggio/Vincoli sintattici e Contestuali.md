---
tags:
  - LdP
aliases:
data: "`2024-09-26 13:03`"
---

- # ES:
	- una variabile deve prima essere dichiarata
	- compatibilità di tipo: $x=e$
		- "x" ed "e" devono avere lo stesso tipo.
- questi vincoli non sono esprimibili tramite le [[Grammatica|grammatiche libere]] perché non sono in grado di descrivere vincoli che dipendono dal contesto 
- # Soluzioni:
	- ## Grammatiche dipendenti dal contesto.
		- Poco pratico: la complessità del problema "$w\in L(G)$" (con G contestuale) è esponenziale nella lunghezza della stringa $w$ e nella taglia di $G$ 
	- ## Controlli specifici:
		- nella costruzione di un compilatore la fase di "[[Analisi semantica]]" fa questi controlli:
- # Sintassi o Semantica:
	- ## Sintassi:
		- tutto quello che si descrive in grammatiche libere
	- ## Semantica:
		- tutto il resto
		- quindi i vincoli contestuali sono _semantici_, o di semantica statica, ovvero possono verificabili a _compile-time_ e il compilatore delega questi controlli all'[[Analisi semantica]] 