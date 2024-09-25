---
cssclasses:
  - dashboard
banner: http://www.michaelrigley.com/cyberpunk-2077
banner_x: 0.5
---

# Primo anno

- ### Programmazione: 
  
```dataview
LIST
FROM "Primo Anno/programmazione" 
limit 5
```
- ### Analisi
  
```dataview
LIST 
FROM "Primo Anno/Analisi"
limit 5
```

- ### Logica 
  
```dataview
LIST 
FROM "Primo Anno/Logica" 
limit 5
```

- Architettura degli elaboratori:
  
```dataview
LIST
FROM "Primo Anno/architettura degli elaboratori"
limit 5
```

- Algebra e geometria
```dataview 
LIST
FROM "Primo Anno/Algebra e geometria"
LIMIT 5
```

- Algoritmi e strutture dati:
```dataview
LIST
FROM "Primo Anno/Algoritmi e strutture dati"
LIMIT 5
```


# Secondo Anno



- ### Calcolo Numerico
  
```dataview
LIST
FROM "Secondo Anno/Calcolo Numerico"
LIMIT 5
```

- ### Reti di calcolatori
  
```dataview
LIST
FROM "Secondo Anno/Reti di Calcolatori"
LIMIT 5
```

- ### Tecnologie Web
```dataview
LIST
FROM "Secondo Anno/Tecnologie Web"
LIMIT 5
```

- ### Linguaggi di Programmazione
  
```dataview
LIST
FROM "Secondo Anno/Linguaggi di Programmazione"
LIMIT 5
```

- ### Sistemi Operativi
```dataview
LIST
FROM "Secondo Anno/Sistemi Operativi"
LIMIT 5
```

- ### Calcolo della probabilità e statistica
  
```dataview
LIST
FROM "Secondo Anno/Calcolo della probabilità e statistica"
LIMIT 5
```

- ### Ottimizzazione combinatoria
  
```dataview 
LIST
FROM "Secondo Anno/Ottimizzazione combinatoria"
LIMIT 5
```

# Terzo anno


# Vault Info

[](https://github.com/TfTHacker/DashboardPlusPlus/blob/master/Dashboard%2B%2B.md#vault-info)

- 🗄️ Recent file updates `$=dv.list(dv.pages('').sort(f=>f.file.mtime.ts,"desc").limit(5).file.link)`
- 〽️ Stats
    - File Count: `$=dv.pages().length`
- Da fare/finire:
```dataview
LIST
FROM #TODO
```
