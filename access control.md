Obiettivi dell'access control:
- confidenzialità: nega accessi non autorizzati alle risorse 
- integrità: nega modifica delle risorse ai non autorizzati 
- disponibilità: un accesso autorizzato deve essere concesso in maniera tempestiva 

Non possono essere massimizzati tutti e tre insieme (trade off)
- triviale garantire confidenzialità e integrità se si sacrifica la disponibilità (negare ogni accesso) 

**Access control**: insieme di politiche e meccansimi che riguardano operazioni da utenti su oggetti 
- quali accessi sono permessi, quando, a chi 
- _soggetto_ entità in grado di accedere un oggetto  
- _oggetto_: ne devo controllare l'accesso 
- _diritto di accesso_ 

**Discretionary accesso control**
- regole sono a discrezione dei soggetti 
**Mandatory accesso control**
- regole stabilite dal sistema 

Noi parleremo solo di DAC 

_principi della sicurezza:_
- open design 
- separazione di politiche e meccanismi 
- numero limitato di meccanismo per implementare una politica 
- accessi devono essere prima negati e poi acquisiti 
- struttura del sis operativo: deve garantire che ogni accesso è controllato dal sistema e non concesso a caso 
	- _complete mediation_ fatto dal _reference monitor_
- un soggetto deve avere privilegi minimi necessari a portare avanti quello che deve fare 
	- limita i danni che possono essere provocati da malconfiguraizoni di sistema 

### TCB: Trusted Computing Base 
Spazio diviso in 
- User space 
- Kernel Space 
	- contiene il Trusted computing Base 
	- e il TCB contiene il reference monitor 
	- le richieste dell'utente devono sempre passare prima per il reference monitor 

S: insieme dei soggetti 
O: insieme oggetti 
alpha: insieme delle operazioni che possono essere eseguite 

Dominio di protezione (protection domain) è un insieme di oggetti e l'insieme di diritti di accesso per ognungo 
- abbinamento può essere statico o dinamico 
- formalmente è un insieme di tuple 

Un modello di Discretionary Access Control (DAC) è la DAC matrix 
- M con domini come righe e oggetti come colonne 
- ogni M(i,j) contiene l'insieme di diritti di accesso alpha che il dominio Di permette sull'oggetto Oj 
![[Pasted image 20250515164952.png|300]] -
- file4  è un dizionario non dovrebbe essere copiato ma A e B possono copiarlo  perchè possono leggere File 4 e scrivere File2 
- aggiungiamo un'operazione nuova: switch (transita) 
- aggiungiamo una riga e una colonna D4 dove il file dizionario è leggibile solo da nel dominio D4 
- il dominio D2 (utente A) può fare lo switch nel dominio D4, il che comporta che i diritti acquisiti prima devono essere manteunti 
	-  un processo quando fa lo switch porta i diritti di prima nel nuovo dominio. (vengono copiati in D4)
	- Due utenti possono fare lo switch nello stesso dominio: possiamo fare istanze multiple dello stesso nuovo dominio 
	![[Pasted image 20250515165601.png|300]]
	- a questo punto A e B possono consultare dizionario, però lo fanno soltanto secondo le regole di chi ha implementato il dominio 4 (tipo non possono copiarlo interamente) 

Possiamo memorizzare queste matrici o per colonna o per riga 
- svantaggi: è dinamico, e la matrice può arrivare ad avere dimensioni enormi 

Due implementazioni più comode
#### **ACL**: 
la matrice viene memorizzata per colonne 
	- ogni oggetto associato  ad una lista di tuple \<domain, set_of_access_rights> 
	- ottimizzazioni: includiamo solo domini che specificano diritti di accesso diversi dal default 
	- può comportarsi come una "lista di invitati" 

Unix ha tre domini: 
- owner, group, others 


#### **capability
- la matrice viene memorizzate per righe 
- ogni dominio viene associato ad una lista di permessi \<oggetti, access_rights_for_object>
	- questa tupla è detta capability 
	- è come avere la chiave per aprire un lucchetto che protegge un oggetto 
![[Pasted image 20250515170511.png|200]]

Un oggetto deve essere in grado di discernere capability vere da false 

Possono essere implementate usando _crittografia a chiave pubblica_ 
- \<oggetto, diritti, codice unico> viene firmato con la chiave privata dell'oggetto e consegnata al soggetto 
- quando lo deve utilizzare si verifica che capabilità sia vera o no (lo verifica l'oggetto) 
	- controlla firma, nome, codice di controllo e limita gli accessi a quelli specificati dalle tuple 

capability può essere _copiato e trasferito_ ma non modificato

**problema revoca**: 
- nel caso ACL: 
	- revoca semplice basta togliere il soggetto tra quelli a cui l'accesso prima era garantito 
- nel caso di capability:
	- diventa più complicato perchè le cap sono distribuiti ai soggetti che ne fanno uso (possono essere ovunque)
	- modificare quindi significa prima localizzarle (potrebbe essere difficile o impossibile) 
	- _aggiungere scadenza_: se si vuole mantenere l'accesso, alla scadenza va rinnovato 
	- _capability indirette:_ 
		- si introduce un livello di direzione, per revocare una cap basta togliere quel livello intermedio 
		- le capabilities non puntano all'oggetto ma ad entries di tabelle intermedie che puntano all'oggetto 
		- modificando queste entries si può simulare una revoca immediata 

access rights su Unix sono fatti di 9 bit 
- read, write excecute per owner, group , altri 

Utenti e gruppi sono identificatie usando interi che si trovano nel password file 
- user-id: 501, 502
- group-id: 1000
mezzina:x:501:1000:Leonardo Mezzina:/home/mezzina:


Ogni processo creato da un utente eredità il suo user id e il group id e li usa come propri real-user id e real group id 
Quando un processo crea un file, il suo owner e gruppo vengono settati ai reals id 
- l'owner di un file può essere modificato con `chown newusername file(s)` 

_real-user-id, real-group-id_: 
- identificano chi ha lanciato il processo 
- sono letti dal password file 

_effective-user-id, effective-group-id_: 
- settati dinamicamente durante l'esecuzione tramite il setuid comando 
- sono usati per determinare gli access rights del processo quando interagisce con il file system 


#### **accesso ibrido**
Combina ACL e capbilities per avere i vantaggi di entrambi 
- uso ACL solo al momento del primo accesso 
- accessi successivi con capabilities (sono più veloci) 
- ACL però rende più facile la revoca 

System call _Open_
`int open(const char *pathname, int flags)`
- restitusice un file di script che è un intero che è un indice della  tabella di open file descriptor del processo 
- il _file descriptor table_ non è altro che una lista di _capabilities_ che corrispondon ai file che possono essere acceduti dal processo 
	- un processo può usare una capability puntandola nel file descriptor table, ma non può modificarla 
- open deve fare l'autenticazione 
	- dopo la prima apertura si crea una capability del file di script, dopodichè tutti gi accessi successivi sono fatti usando la cap (molto più veloci) 


## saved user-id 
In addition to real-user-id, real-group-id, effective-user-id and effectivegroup-id, each process has a saved-user-id and saved-group-id che contengono compie degli effective al momento in cui il comando **setuid** è eseguito 

vogliamo che un utente possa cambiare solo la propria password 
- questo programma farà tutti i controlli che utente possa toccare solo le righe che corripondono a sè stesso 

Si utilizza **setuid** per risolvere il problema delle password 
- root scrive un comando /bin/passwd che è posseduto da root con i permessi r-s--x--x (il bit seuid è on)
- il file /etc/passwd è posseduto da root con i permessi rw root only 
- /bin/passwd è eseguito da un processo, il suo effective-use-id cambia a root 
- quindi un processo può scrivere il file /etc/passwd ma solo dopo aver fatto tutti i controlli 