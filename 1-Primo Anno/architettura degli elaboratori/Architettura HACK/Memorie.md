---
tags: []
aliases:
  - memorie volatili
  - gerarchia di memoria
  - memorie persistenti
  - memorie permanenti
data: "`2024-08-31 20:05`"
---
- ## Classificazione
	- ### Volatili:
		- ovvero non mantengono i dati salvati in caso di spegnimento
			- [[Registri]]
			- [[Cache]]
			- RAM
	- ### persistenti ^103da2
		- mantengono i dati salvati in caso di spegnimento
			- ROM ^ff2552
			- dischi magnetici e a stato solido (_on-line_ perché sempre accessibili)
			- dischi ottici(_off-line_ perché devono essere prima montati per potervi accedere)
- ## Gerarchia di memoria
	- i dati sono trasferiti in memorie sempre più veloci 
		- memoria interna: alta velocità basse dimensioni(qualche kB) e costituita da registri
		- memoria centrale: grandi dimensioni (fino a qualche GB) tempi di accesso elevati 
		- memoria secondaria: alta capacità bassi costi e non volatili 
	- quindi l'obiettivo è quello di avere i dati con [[Cache#^2e4ff7||località temporale]] alta in memorie più veloci.