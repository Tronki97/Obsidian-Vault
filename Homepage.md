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

| File                                                                                                                                                  | Materia                                                 |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------- |
| [[Homepage]]                                                                                                                             | Homepage.md                                             |
| [[Fondamenti di cybersecurity]]                                                                            | 0-Mostarda/Fondamenti di cybersecurity.md               |
| [[Informatica teorica]]                                                                                            | 0-Mostarda/Informatica teorica.md                       |
| [[Computational statistics]]                                                                                  | 0-Mostarda/Computational statistics.md                  |
| [[introduzione all'apprendimento automatico]]                                                | 0-Mostarda/introduzione all'apprendimento automatico.md |
| [[Basi di Dati]]                                                                                                          | 0-Mostarda/Basi di Dati.md                              |
| [[Ingegneria del software]]                                                                                    | 0-Mostarda/Ingegneria del software.md                   |
| [[sviluppo di un sistema software in python]] | Ingegneria del software                                 |
| [[Caratteristiche Object Oriented di python]] | Ingegneria del software                                 |
| [[Caratteristiche funzionali di python]]           | Ingegneria del software                                 |
<!-- SerializedQuery END -->
<!-- SerializedQuery: TABLE regexreplace(file.path, "^.*?/(.*?)/.*$", "$1") AS Materia FROM "" WHERE file.path !=("template/Modello appunti.md" OR "Homepage.md")SORT file.mtime DESC LIMIT 10 -->

# Primo Anno
- [[Analisi matematica]]
	- [x] Passato
	- Voto: 
- [[Logica per l'informatica]]
	- [x] Passato
- [[Architettura degli Elaboratori]]
	- [x] Passato
- [[Programmazione]]
	- [x] Passato
- [[Algebra e Geometria]]
	- [ ] Passato
- [[Algoritmi e strutture dati]]
	- [x] Passato
# Secondo Anno
- [[Calcolo numerico]]
	- [x] Passato
- [[Tecnologie Web]]
	- [x] Passato
- [[Sistemi Operativi]]
	- [x] Passato
- [[Linguaggi di Programmazione]]
- [[Reti di Calcolatori]]
- [[Ottimizzazione combinatoria]]
	- [x] Passato
- [[Calcolo delle probabilità e statistica]]
	- [x] Passato
# Terzo Anno
- [[Ingegneria del software]]
	- [ ] Passato
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


