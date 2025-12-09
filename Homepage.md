---
cssclasses:
  - dashboard
---
# Vault Info

## Ultime lezioni da finire:

```dataview
TABLE regexreplace(file.path, "^.*?/(.*?)/.*$", "$1") AS Materia 
FROM #TODO
WHERE file.path !="template/Modello appunti.md"
SORT file.ctime DESC
LIMIT 15
```

## Da fare/finire:
```dataview
TABLE regexreplace(file.path, "^.*?/(.*?)/.*$", "$1") AS Materia
FROM #TODO
WHERE file.path !="template/Modello appunti.md"
SORT Materia 
```




## Ultimi modificati:
<!-- QueryToSerialize: LIST FROM Primo Anno/Analisi -->

<!-- QueryToSerialize: TABLE regexreplace(file.path, "^.*?/(.*?)/.*$", "$1") AS Materia FROM "" WHERE file.path !=("template/Modello appunti.md" OR "Homepage.md")SORT file.mtime DESC LIMIT 10 -->
<!-- SerializedQuery: TABLE regexreplace(file.path, "^.*?/(.*?)/.*$", "$1") AS Materia FROM "" WHERE file.path !=("template/Modello appunti.md" OR "Homepage.md")SORT file.mtime DESC LIMIT 10 -->

| File                                                                                                                                                  | Materia                                   |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [[Homepage]]                                                                                                                             | Homepage.md                               |
| [[Linguaggi di Programmazione]]                                                                            | 0-Mostarda/Linguaggi di Programmazione.md |
| [[sviluppo di un sistema software in python]] | Ingegneria del software                   |
| [[Caratteristiche funzionali di python]]           | Ingegneria del software                   |
| [[sviluppo di un sistema software Java]]           | Ingegneria del software                   |
| [[architettura dei software]]                            | Ingegneria del software                   |
| [[Pattern comportamentali]]                                           | Ingegneria del software                   |
| [[Pattern strutturali]]                                                   | Ingegneria del software                   |
| [[Indici]]                                                                                                       | Basi di Dati                              |
| [[reti convoluzionali]]                                  | Introduzione all'apprendimento automatico |
<!-- SerializedQuery END -->
<!-- SerializedQuery: TABLE regexreplace(file.path, "^.*?/(.*?)/.*$", "$1") AS Materia FROM "" WHERE file.path !=("template/Modello appunti.md" OR "Homepage.md")SORT file.mtime DESC LIMIT 10 -->

# Primo Anno
- [[Analisi matematica]]
	- [x] Passato
	- Voto: 24
- [[Logica per l'informatica]]
	- [x] Passato
	- Voto: 19
- [[Architettura degli Elaboratori]]
	- [x] Passato
	- Voto: 24
- [[Programmazione]]
	- [x] Passato
	- Voto: 25
- [[Algebra e Geometria]]
	- [ ] Passato
- [[Algoritmi e strutture dati]]
	- [x] Passato
	- Voto: 20
# Secondo Anno
- [[Calcolo numerico]]
	- [x] Passato
	- Voto: 23
- [[Tecnologie Web]]
	- [x] Passato
	- Voto: 25
- [[Sistemi Operativi]]
	- [x] Passato
	- Voto: 23
- [[Linguaggi di Programmazione]]
	- [ ] Passato
- [[Reti di Calcolatori]]
	- [ ] Passato
- [[Ottimizzazione combinatoria]]
	- [x] Passato
	- Voto: 21
- [[Calcolo delle probabilità e statistica]]
	- [x] Passato
	- Voto: 27
# Terzo Anno
- [[Ingegneria del software]]
	- [x] Passato
	- Voto: 23
- [[Basi di Dati]]
	- [ ] Passato
- [[introduzione all'apprendimento automatico]]
	- [ ] Passato
- [[0-Mostarda/Computational statistics|Computational statistics]]
	- [ ] Passato
- [[Informatica teorica]]
	- [ ] Passato
- [[Fondamenti di cybersecurity]]
	- [ ] Passato


