---
tags:
aliases:
data: "`2025-09-22 16:04`"
---
- # problema:
	- Avere una struttura che si ripete spesso ma che viene applicata a concetti diversi.
- # Template:
	- Usata nella STL usata per riutilizzare delle strutture dati nel codice scritto.
	- Non sono completamente generici visto hce vengono risolti in compilazione
	- Una classe template è:
		- Un nome che indica un modello sulla base del quale genero del codice.
		- La dichiarazione sta all'interno del file `.h`
- # Funzioni template:
	- Non sono compilate finché non sono istanziate esplicitamente
- # Classi template:
	- In questo caso il compilatore non deve dedurre i tipi dei parametri.
	- Ad ogni istanziazione il tipo dei parametri deve essere esplicitato.
- # Specializzazione dei template:
	- A volte è possibile fare l'override del codice generato dai template fornendo delle definizioni per tipi specifici.
- # Link Utili:
	- 