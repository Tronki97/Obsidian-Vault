---
tags: 
aliases:
  - digest
  - cookies
  - autenticazione
  - HTTP caching
data: "`2024-11-18 16:11`"
---
- # HTTP/2  HTTP/3:
	- ripasso su [[HTTP]] 
	- nelle ultime versioni di HTTP, la 2 e la 3, sono state introdotte delle novità per migliorare le prestazioni, ma continuano a usare gli stessi metodi REST, status code e header.
	- ## HTTP/2:
	    - è stato introdotto per migliorare le prestazioni di HTTP/1.1
	    - è stato introdotto il _multiplexing_ ovvero la possibilità di inviare più richieste contemporaneamente su una sola connessione TCP.
	        - possono essere restituite anche in ordine diverso da quello in cui sono state inviate.
	    - è stato introdotto il _server push_ ovvero la possibilità di inviare risorse che il client non ha ancora richiesto da parte del server.
	    - è stato introdotto il _header compression_ ovvero la compressione degli header per ridurre il peso delle richieste.
		    - spedisco soltanto gli header che sono stati modificati e poi vengono compressi.
		    - ciò riduce la dimensione di circa il 30%
	    - ### Binary framing layer: 
		    - è stato introdotto un nuovo livello di framing binario per separare le richieste e le risposte, relative agli header e al body. 
	- ## HTTP/3:
		- è stato introdotto per migliorare le prestazioni di HTTP/2
		- è stato introdotto il _QUIC_ ovvero un nuovo protocollo di trasporto basato su UDP che permette di inviare più richieste contemporaneamente su una sola connessione.
		- mantiene la retrocompatibilità riguardo gli header e il resto.
- # Cookies:
	- sono informazioni non interpretabili che vengono salvati sul computer del client quando si visita un sito web.
	- grazie al cookie il cliente poi può essere riconosciuto dal server per poi ricevere informazioni personalizzate.
	- il protocollo fornisce un meccanismo per trasferire questi cookie
	- ## Creazione:
	    - il server invia un header `Set-Cookie` con le informazioni del cookie
	    - il client salva il cookie e lo invia al server con ogni richiesta successiva
	- quando si cancellano i cookie si cancellano le informazioni personalizzate per l'utente cancellandone appunto l’header.
	- ## Info contenute:
		- il dominio per cui sono validi
		- l’[[URI (Uniform Resource Identifier)|URI]] per cui sono validi
		- la durata in secondi del cookie
		- la richiesta che il client contatti il server solo con determinati protocolli sicuri.
		- la versione del cookie.
	- ## Esempio:
		- ![[Pasted image 20241118163657.png|700]]
	- ## Uso dei cookie:
		- ### Persistenti:
			- rimangono sul computer del client anche dopo la chiusura del browser
			- possono contenere informazioni su login, preferenze degli utenti, ecc…
		- ### di sessione:
			- vengono cancellati quando si chiude il browser
			- contengono un identificativo della sessione le cui informazioni sono sul server
		- ### terze parti: 
			- sono creati da un dominio diverso da quello che si sta visitando
			- usati dai banner pubblicitari
			- possono essere bloccati dai browser
	- ## Cookie di sessione:
		- contengono un ID univoco che il server memorizza e sa riconoscere.
		- sono usati per mantenere la sessione aperta.
		- il server gestisce la scadenza del cookie e quindi gestisce la chiusura della sessione.
		- molti linguaggi server-side gestiscono in automatico i cookie di sessione. 
- # Autenticazione:
	- un campo dove applicare i cookies.
	- è il processo di verifica dell'identità di un utente
	- si vuole fare in modo che una volta autenticato l’utente non debba più ripetere l’operazione.
		- fino alla scadenza della validità.
	- ## Session-based:
	    - il server mantiene una sessione per ogni utente autenticato
	    - il server mantiene un cookie con un ID della sessione
	    - il client invia il cookie con ogni richiesta
	    - il server verifica l’identificativo della sessione e se è valido risponde
	    - la sessione viene generata dopo la verifica dell’identità dell’utente.
	    - la sessione può essere salvata in un database o in un file.
	    - queste informazioni possono essere spedite anche attraverso i cookies.
	    - ![[Pasted image 20241118165919.png]]
	    - 
	- ## Token-based:
		- il client memorizza un token 
		- il client manda il token al server con ogni richiesta
		- il server verifica il token e risponde
	- questi due metodi si basano sugli header.
	- ## Header www-authenticate:
	    - è un header che il server invia al client per richiedere l’autenticazione tramite uno status code 401.
	    - il client risponde con un header `Authorization` con le credenziali
	    - ### Schemi comuni:
		    - #### Basic: 
			    - il client manda le credenziali in chiaro 
			    - il server risponde con un token
			    - poco sicuro siccome la password passa in chiaro
			    - 
			- #### Digest:
				- il client manda un hash della password
				- il server decifra i dati e autentica se corretti 
				- ![[Pasted image 20241118165453.png]]
			- Bearer:
				- il cliente non spedisce la password, ma solo un token da parte dell’header.
	- ## Token-based authentication:
		- non richiede di memorizzare sul server informazioni relative alle sessioni
		- Dopo aver autenticato l'utente, il server crea un token con un segreto, lo firma con la propria chiave e lo spedisce al client
		- Il client memorizza il token e lo aggiunge negli header di tutte le successive richieste
		- Il server verifica la firma del token e risponde con i dati richiesti.
		- ![[Pasted image 20241118170722.png]]
- # Cors:
	- Cross-Origin Resource Sharing
	- è un meccanismo che permette di fare richieste a risorse di un dominio diverso da quello in cui è stata caricata la pagina.
	- 
- # Caching:
	- è il salvataggio temporaneo di risorse per ridurre il tempo di caricamento di una pagina.
	- può essere fatto sia dal client che dal server che da un proxy.
	- ## Server-specified expiration:
		- il server specifica la durata di una risorsa nella cache.
		- se la data di scadenza è andata, il client deve fare una nuova richiesta.
		- Se la richiesta accetta anche risposte scadute o se l'origin server non può essere raggiunto, la cache può rispondere con la risorsa scaduta ma con il codice 110 (_Response is stale_) 
	- ## Heuristic expiration:
	    - quando non ci sono info sulla cache.
	    - usa delle info contenute in altri Header.
	    - Se non valida con sicurezza una risposta assunta fresca, allora deve fornire un codice 113 heuristic expiration alla risposta.
		    - probabilmente la risorsa non è valida perché calcolata con l’euristica e starà quindi al client se accettarla o meno.
- # Link Utili:
	- 