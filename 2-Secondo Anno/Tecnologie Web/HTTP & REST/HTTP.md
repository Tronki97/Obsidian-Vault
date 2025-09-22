---
tags: []
aliases: 
data: "`2024-10-10 15:56`"
---
- # Argomento:
	- è un protocollo indipendente dal formato dei dati con cui vengono trasmessi i dati 
	- è _stateless_ ovvero il server non è tenuto a mantenere la connessione tra una sessione ed un altra 
- # Ruoli 
	- ## Origin server:
		- il server contenente il dato che sto trasferendo
	- ## User agent:
		- chi ha fatto la richiesta HTTP 
		- lo è il pc che fa una ricerca su google.
	- ## Proxy/gateway:
		- Proxy è intermediario tra l'Origin server e l'User agent che velocizza il trasferimento e lo si sceglie manualmente
		- mentre il Gateway è più trasparente e non viene scelto 
- # Metodi: ^d2b566
	- elemento centrale di una architettura REST
	- proprietà:
		- sicurezza :
			- non genera cambiamenti sullo stato del server.
			- qualunque intermediario può eseguire questo metodo
		- idempotenza:
			- eseguire questo metodo una volta ha lo stesso effetto che eseguirlo più volte
			- può essere rieseguito da più intermediari 
	- ## Proprietà:
		- ### Sicurezza:
			- un metodo é sicuro non genera cambiamenti sullo stato del server.
			- un metodo sicuro viene eseguito da un nodo intermedio senza effetti negativi.
	    - ### Idempotenza: 
		    - eseguire questo metodo una volta ha lo stesso effetto che eseguirlo più volte
	- ## GET:
		- `get "risorsa" `
		- richiede una risorsa al server
		- è il metodo che viene eseguito quando si apre una pagina web cliccando su di un link ipertestuale.
		- é sicuro ed idempotente.
		- ### ES:
			- `GET /courses/tw.html`
			- `GET/students/123456/exams/`
	- ## HEAD:
		- simile a GET ma non trasferisce il body della risorsa
	    - viene usato per ottenere informazioni sull'header di una risorsa
	    - è idempotente e sicuro
	    - # ES: 
		    - `HEAD /courses/tw.html`
	- ## POST:
		- trasmette informazioni dal client al server relative alla risorsa identificata nell'[[URI (Uniform Resource Identifier)||URI]] 
		- può creare anche nuove risorse 
		- può essere usato per spedire i dati di un Form HTML ad un'applicazione server-side.
		- # ES:
			- ![[Screenshot (9).png]]
	- ## PUT:
		- trasmette delle info dal client al server _creando o sostituendo la risorsa specificata_  
		- l'argomento è la risorsa che ci si aspetta di ottenere facendo GET in seguito con lo stesso nome 
		- non offre garanzie di controllo degli accessi o locking
		- _idempotente ma non sicuro_
	- ## PATCH:
		- aggiorna parzialmente la risorsa indentificata dall'URI
		- indica quali modifiche incrementali e non sovrascrivere 
		- ### ES:
			- ![[Screenshot (12).png]]
	- ## DELETE:
		- rimuove informazioni connesse con una risorsa.
		- dopo questo metodo la risorsa non esiste più _e farne una GET ritorna un errore 404_  
- # Status code:
	- 1xx: informational:
		- una risposta temporanea alla richiesta, durante lo svolgimento
	- 2xx: successful: 
		- il server ha ricevuto capito e accettata la richiesta
	- 3xx redirection:
		- la richiesta è corretta ma servono altre azioni da parte del client per terminare la richiesta 
	- 4xx: client-error:
		- la richiesta del client non può essere soddisfatta
	- 5xx: Server error: 
		- il server non riesce a soddisfare la richiesta per un problema interno
- # Header 
	- informazioni aggiuntive che caratterizzano le richieste e le risposte e ne descrivono certi aspetti
	- caratterizzano sia richiesta che risposta
	- ## Dell'entità:
		- danno info sul body del messaggio oppure sulla risorsa specificata.
		- ### Content-type: 
			- il tipo MIME. obbligatorio in ogni messaggio che abbia un body.
		- ### Content-length:
			- le lunghezza in byte del body. Obbligatorio soprattutto se la connessione è persistente
		- ### Content, -encoding, -lenguage, -location, MD5
- # Esempio di richiesta:
	- ```
``` powershell
	GET /beta.html HTTP/1.1
	Referer: Keep-Alive
	User-Agent: Mozilla/4.61 (Macintosh; I; PPC)
	Host: www.alpha.com:80
	Accept: image/gif, image/jpeg, image/png, */*
	Accept-Encoding: gzip
	Accept-Language: en
	Accept-Charset: iso-8859-1,*,utf-8

```
- # Link Utili:
	- 