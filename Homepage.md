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

| File                                                                                                                                                                                            | Materia                                   |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [[Homepage]]                                                                                                                                                                       | Homepage.md                               |
| [[problema di classificazione]]                                                                          | Introduzione all'apprendimento automatico |
| [[Distribuzione congiunta]]                                                         | Introduzione all'apprendimento automatico |
| [[Naive Bayes]]                                                                                 | Introduzione all'apprendimento automatico |
| [[Design pattern]]                                                                                                                      | Ingegneria del software                   |
| [[Design OO in UML]]                                                                               | Ingegneria del software                   |
| [[Controllo]]                                                                                                                  | Linguaggi di Programmazione               |
| [[Algebra relazionale]]                                                                              | Basi di Dati                              |
| [[Distribuzioni notevoli continue]]                                               | Calcolo della probabilità e statistica    |
| [[Distribuzioni notevoli di variabili aleatorie discrete]] | Calcolo della probabilità e statistica    |
<!-- SerializedQuery END -->
<!-- SerializedQuery: TABLE regexreplace(file.path, "^.*?/(.*?)/.*$", "$1") AS Materia FROM "" WHERE file.path !=("template/Modello appunti.md" OR "Homepage.md")SORT file.mtime DESC LIMIT 10 -->

# Primo Anno

- ## Programmazione

```dataview
LIST
FROM "Primo Anno/programmazione" 
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Introduzione alla programmazione.
    - Strutture dati basilari (array, liste).
    - Funzioni e parametri.
    - Condizioni e cicli.
    - Errori e gestione delle eccezioni.

## Analisi

```dataview
LIST 
FROM "Primo Anno/Analisi"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Funzioni matematiche elementari (limitate, continue).
    - Limiti e continuità.
    - Derivate e integrali.

## Logica

```dataview
LIST 
FROM "Primo Anno/Logica" 
LIMIT 10
```
- **Contenuti principali:** 
    - Sistemi logici classici (proposizioni, quantificatori).
    - Teoria delle dimostrazioni.
    - Logiche non classiche.

## Architettura degli elaboratori:

```dataview
LIST
FROM "Primo Anno/architettura degli elaboratori"
LIMIT 10
```
- **Contenuti principali:** 
    - Strutture di base di un processore.
    - Sistema di codifica e rappresentazione dei numeri.
    - Cache, memoria RAM e dischi.

## Algebra e geometria

```dataview 
LIST
FROM "Primo Anno/Algebra e geometria"
LIMIT 10
```
- **Contenuti principali:** 
    - Geometria analitica (punti, rette).
    - Operazioni algebriche.
    - Matrici e determinanti.

## Algoritmi e strutture dati:

```dataview
LIST
FROM "Primo Anno/Algoritmi e strutture dati"
LIMIT 10
```
- **Contenuti principali:** 
    - Algoritmi di ricerca (binaria, sequenziale).
    - Strutture dati (coda, pila).

# Secondo Anno

## Calcolo Numerico
  
```dataview
LIST
FROM "Secondo Anno/Calcolo Numerico"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Metodi di risoluzione di equazioni algebriche.
    - Approssimazione numerica (metodo dei minimi quadrati).
    - Algoritmi per la risoluzione di sistemi lineari.

## Reti di calcolatori
  
```dataview
LIST
FROM "Secondo Anno/Reti di Calcolatori"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Strutture e funzionamento delle reti.
    - Protocolli di rete (TCP/IP).
    - Protocollazione e sicurezza.

## Tecnologie Web
  
```dataview
LIST
FROM "Secondo Anno/Tecnologie Web"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Strutture di un sito web.
    - Linguaggi di markup (HTML, CSS).
    - Scripting e interazione con l'utente.

## Linguaggi di Programmazione
  
```dataview
LIST
FROM "Secondo Anno/Linguaggi di Programmazione"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Strutture di base (variabili, operatori).
    - Tipi di dati e tipizzazione.
    - Programmi orientati agli oggetti.

## Sistemi Operativi
  
```dataview
LIST
FROM "Secondo Anno/Sistemi Operativi"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Funzionamento di un sistema operativo.
    - Gestione del processo e memoria.
    - File system.

## Calcolo della probabilità e statistica
  
```dataview
LIST
FROM "Secondo Anno/Calcolo della probabilità e statistica"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Teoria delle probabilità.
    - Distribuzioni di probabilità discrete e continue.

## Ottimizzazione combinatoria
  
```dataview 
LIST
FROM "Secondo Anno/Ottimizzazione combinatoria"
SORT file.mtime DESC
LIMIT 10
```
- **Contenuti principali:** 
    - Algoritmi per la risoluzione di problemi combinatori.
    - Problemi di flusso e loro applicazioni.

# Terzo Anno


