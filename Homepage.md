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

# Primo Anno
- [[Analisi matematica]]
	- [x] Passato
	- Voto: 24
	- Tentativi: 1
- [[Logica per l'informatica]]
	- [x] Passato
	- Voto: 19
	- Tentativi: 1
- [[Architettura degli Elaboratori]]
	- [x] Passato
	- Voto: 24
	- Tentativi: 2
- [[Programmazione]]
	- [x] Passato
	- Voto: 25
	- Tentativi: 2
- [[Algebra e Geometria]]
	- [ ] Passato
	- Voto: ~~10~~, ~~14~~, 
	- Tentativi: 2
- [[Algoritmi e strutture dati]]
	- [x] Passato
	- Voto: 20
	- Tentativi: 1
# Secondo Anno
- [[Calcolo numerico]]
	- [x] Passato
	- Voto: 23
	- Tentativi: 1
- [[Tecnologie Web]]
	- [x] Passato
	- Scritto: 24
	- Progetto: 26
	- Totale: 25
	- Tentativi: 1
- [[Sistemi Operativi]]
	- [x] Passato
	- Parziale 1: 26
	- Parziale 2: 24
	- Pratico: 14
	- Progetto: 30
	- Totale: 23
	- Tentativi: 2
- [[Linguaggi di Programmazione]]
	- [ ] Passato
	- Voto: 
	- Tentativi: 
- [[Reti di Calcolatori]]
	- [ ] Passato
	- Voto:
	- Tentativi: 1
- [[Ottimizzazione combinatoria]]
	- [x] Passato
	- Voto: 21
	- Tentativi: 1
- [[Calcolo delle probabilità e statistica]]
	- [x] Passato
	- Voto: 27
	- Tentativi: 1
# Terzo Anno
- [[Ingegneria del software]]
	- [x] Passato
	- Voto: 23
	- Tentativi: 1
- [[Basi di Dati]]
	- [x] Passato
	- Voto: 27
	- Tentativi: 1
- [[introduzione all'apprendimento automatico]]
	- [ ] Passato
	- Quiz: 25
	- Progetto: 
	- Totale: 
	- Tentativi: 1
- [[0-Mostarda/Computational statistics|Computational statistics]]
	- [ ] Passato
	- Voto: 
	- Tentativi:
- [[Informatica teorica]]
	- [ ] Passato
	- Tentativi:
- [[Fondamenti di cybersecurity]]
	- [ ] Passato
	- Tentativi: 


