---
tags: 
aliases:
  - proxy server
  - web caches
data: "`2024-12-20 13:48`"
---
- # Web caches:
	- tiene in memoria le ricerche e le richieste fatte da un server 
	- fa sia da client se chiede un informazione ad un server di origine. Sia da server per l’utente che richiede un informazione.
	- può causare problemi per la sicurezza per chi ci accede e può leggere le richieste e ricerche fatte. A differenza dei cookies non necessità l’autorizzazione dell’utente. 
	- ## Caching:
		- utilizzato per connessioni a internet nel caso in cui il canale “access link” sia molto più piccolo della LAN in quanto immagazzina l’accesso a certe informazioni che quando chieste di nuovo saranno più veloci ad accederci
- # Proxy servers:
	- La cache lato utente per non doversi interfacciare all'_origin server_ per ogni richiesta.
	- Il browser manda tutte le richieste a lui, e se può soddisfarle manda lui le risposte, altrimenti vengono mandate, le richieste, all'origin server.
	- Utile oltre ad accorciare i tempi anche per diminuire il carico sul server originario. 
- # ES:
	- Se un proxy può soddisfare metà delle richieste vuol dire che un browser per ottenere una risposta impiegherà il tempo per far arrivare la richiesta al proxy, mentre se non può soddisfarla dovrà interfacciarsi all'origin il che impiegherà più tempo.  
	- $$X*9ms + (1-X)*309ms=97ms \implies X(9 - 309) = 97 -309 \implies X= \frac{212}{300}=70,7\%$$