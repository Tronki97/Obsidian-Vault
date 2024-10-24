---
~
---
- Per la CPU si considerano due distinti ingressi:
	- ##### instruction:
		- per caricare le istruzioni da eseguire
	- ##### inM:
		- per caricare i dati necessari in memoria dati
- visto che caricare dati e istruzione richiederebbe un ciclo di clock molto lungo si tende a caricare le prossime istruzioni quando quelle attuali sono ancora in esecuzione.
- per fare ciò si utilizza un hardware dedicato ovvero l'IFU(Instruction Fetch Unit) ^0b8e3f