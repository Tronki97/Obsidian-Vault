---
tags:
  - TODO
aliases: 
data: "`2025-10-20 12:23`"
---
- # architettura:
	- Riguarda la divisione del sistema in sottosistemi a diversi livelli
		- Sia hardware, database e altro...
	- ## Pipe e Filters
		- Ogni componente ha un set di input e output 
		- I componenti leggono dei flussi di input che vengono trasformati e il cui output inizia prima che tutto l'input venga consumato
	- ## sistemi stratificati:
		- Si separa visioni di alto livello da quelle di basso per facilitarne la programmazione e ciò può minarne le performance e a volte quegli stati si saltano
	- ## A eventi:
		- Il sistema aspetta che avvenga un evento  
	- ## A repositories:
		- Si ha un database con le [[transazioni]] che eseguono.
	- ## Interpreti:
		- Modelli in cui il sistema è così complesso che devo creare un interprete che risolva il problema in maniera più semplice.
- # Link Utili:
	- 