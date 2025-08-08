---
tags:
  - "#reti2025"
---
# Livello fisico
Quali tra le tecniche di modulazione digitale (FSK, ASK, PSK, QAM) nelle reti senza fili sono
MENO resistenti all’interferenza (cioè a più rischio di errori)?
?
L'==ASK== risulta più vulnerabile alle interferenze in quanto una di esse può interferire direttamente sull'ampiezza del segnale e riflettersi direttamente sui bit che si vogliono spedire  


Cosa indica la regola dei 6 dB e quale utilità pratica ha?
?
La regola dei 6 dB indica che in media un segnale perde 6dB di potenza ogni volta che la distanza tra trasmettitore e ricevitore raddoppia, è utile perché ci dice che se la distanza raddoppia allora si necessita di quadruplicare la potenza del segnale da trasmettere.


Data la matrice dei bit di parità pari che segue cosa possiamo dire su eventuali errori della
Sequenza di bit? (i bit sottolineati sono i bit di parità pari).
![[Pasted image 20250709125932.png||200]]
?
La seconda riga presenta un errore siccome la somma dei bit in modulo 2 è diversa dal bit di parità 0
Inoltre per lo stesso motivo anche le colonne 2,3,4,5 risultano con degli errori.

è possibile comunicare con solo ethernet a 10 km di distanza
?
No a causa delle perdite la portata massima dell'ethernet è di 100 m, si necessiterebbe di usarlo in combo con la fibra ottica o usare dei ripetitori/switch intermedi.

Che differenza c'è tra la codifica digitale QAM-16 e QPSK?
?
QPSK permette la codifica di 2 bit per simbolo mentre QAM-16 di 4 per simbolo.
QPSK avendo una distanza tra i simboli maggiore è più resistente al rumore, però appunto QAM-16 è più veloce nella trasmissione dati.

Meglio una rete che invia 10 Mb/s con un ritardo di 1 secondo o una rete che invia 1 Mb/s con un
Ritardo di 100 ms?
?
Non esiste un meglio dipende dal funzionamento dell'applicazione che deve ricevere quei pacchetti.
Per esempio un sito streaming dal vivo preferirebbe l'arrivo di pacchetti con basso ritardo per poter garantire una migliore esperienza utente.
Mentre un sito di streaming tipo youtube dove non si necessita interattività accetta l'arrivo di grandi quantità di dati con alti ritardi così che il video scorra fluido.  

 Che utilità ha il meccanismo RTS/CTS nelle reti 802.11?
 ?
 è utile per evitare le collisioni tra segnali in quanto si manda in broadcast l'RTS che richiede la possibilità di comunicare e che si aspetta un CTS senza il quale non comunicherebbe.
 Se viene ricevuto un CTS senza aver mandato un RTS non si comunicherà anche perché vuol dire che qualcuno che non si riesce a sentire ha mandato la richiesta e se invece si riceve un RTS allora si aspetta finché non è finita la comunicazione su quel canale.

# Livello MAC
Perché si utilizza un Acknowledgment a livello MAC/LLC e poi di nuovo a livello
Trasporto? Perché non bastano a livello Trasporto?
?
L'==ACK== a livello MAC serve per verificare l'arrivo con successo del pacchetto allo switch/hub più vicino e quindi ha un RTT basso.
Mentre a livello trasporto l'==ACK== serve a garantire che il pacchetto sia arrivato all'applicazione finale la quale potrebbe essere anche molto distante in termini di nodi e quindi necessita di un RTT più alto.
In conclusione si avrebbero tempi di ritrasmissione, in caso di errore, alti anche solo per un errore relativo al primo link.

Spiegare il concetto di vulnerabilità del frame in protocolli MAC ad accesso casuale
In reti senza fili.
?
La vulnerabilità rappresenta il tempo in cui il frame viaggia dal trasmettitore al ricevitore e durante la quale può collidere con altre trasmissioni e magari venir sopraffatta da segnali più potenti.
Per ridurlo si possono settare degli intervalli specifici in cui si può trasmettere oppure aspettare che non ci siano segnali prima di trasmettere.

Come è organizzata la struttura di tutta la rete internet? Cosa la rende scalabile in termini di numero di collegamenti pur permettendo che tutti gli host siano connessi?
?
La rete internet è organizzata gerarchicamente ciò che la rende scalabile è proprio la sua struttura e il fatto che l'aggregazione degli indirizzi compatta le tabelle di routing permettendo anche una comunicazione più rapida.

Internet è una rete a commutazione di circuito? Perché?
?
No internet è una rete a commutazione di pacchetto siccome non comunica seguendo un percorso prefissato sin dall'inizio ma ogni pacchetto condivide i router con tutti gli altri e inoltre non ha una qualità fissa come nella commutazione di circuito perché non ha le risorse pre-allocate dall'inizio del trasferimento.

# Livello Rete
Come possono convivere e funzionare sistemi IPv4 e IPv6 su Internet?
?
I pacchetti di un tipo vengono incapsulati in pacchetti dell'altro fino all'uscita, però il router sa di che tipo sono e quindi riesce a spedirli nella parte dell'internet legata al loro tipo.

Se si eseguisse un comando PING e la risposta fosse: 
```
64 bytes from 130.136.5.36: icmp_seq=0 ttl=54 time=16.624 ms
64 bytes from 130.136.5.36: icmp_seq=1 ttl=54 time=15.590 ms
ping: sendto: No route to host
ping: sendto: No route to host
Request timeout for icmp_seq 2
Request timeout for icmp_seq 3
64 bytes from 130.136.5.36: icmp_seq=4 ttl=54 time=15.404 ms
64 bytes from 130.136.5.36: icmp_seq=5 ttl=54 time=14.712 ms

```
Quali potrebbero essere le cause?
?
La causa per il `no route to host` potrebbe essere il fatto che il DNS ha un record con la risoluzione del nome e quindi sa l'indirizzo IP a cui mandare il `PING` ma il percorso potrebbe essere mancante.
E poi ripristinarsi per poter far passare i `PING`.

Se si eseguisse un comando PING e la risposta fosse: 
```
PING flora.cs.unibo.it (130.136.5.36): 56 data bytes
ping: cannot resolve flora.cs.unibo.it: Unknown host
```
Quali potrebbero essere le cause?
?
La causa potrebbe essere un mancato record DNS per `flora.cs.unibo.it` oppure una digitazione sbagliato del nome della macchina da pingare


Cos è il protocollo ICMP?
?
L'Internet control message protocol permette attraverso dei messaggi capibili dall'utente di comunicare degli errori o problemi sullo stato della rete.

Quali sono le ragioni della perdita di pacchetti al livello rete? Esiste un modo per gestire pacchetti IPv4 sul router in modo da favorire pacchetti ad alta priorità?
?
La perdita dei pacchetti può avvenire a casua della congestione dei router dove i pacchetti si accumulano sul buffer di ricezione fino a portarlo all'overflow,  con quelli in eccesso che vengono cestinati. 
Per gestire pacchetti in base alla loro priorità si possono usare code con priorità 

A cosa servono gli indirizzi di Broadcast a livello MAC e livello
Rete? Non basterebbe disporre dell’indirizzo di Broadcast solo a livello
MAC o solo a livello Rete?
?
Solo a livello rete non basterebbe visto che non si possiederebbe l'indirizzo MAC a cui inviare il pacchetto.
Solo a livello MAC non si riuscirebbe ad inviare il pacchetto ad una subnet distante. 

Come posso calcolare quante sottoreti di una rete a cui appartiene un host esistono?
?
Si prende il CIDR di quell'host `192.168.5.23/22` sarebbe /22
Determino la maschera di default in base alla classe della rete 
In questo caso è di classe C quindi /24
Si calcola la differenza $\Delta=22-24=-2$ siccome è negativa allora è una supernet.
Nel caso invece di `10.5.1.7/12` è di classe A quindi /8 avendo una differenza di 4 bit e di conseguenza si hanno $2^{4}=16$ sottoreti. 

Quali componenti gestiscono la comunicazione di rete IPv4 a livello Rete (3)? Quali compiti
Assolvono?
?
Questi componenti sono i router che ricevono i pacchetti che poi instraderanno verso il giusto nodo grazie alla tabella di instradamento che hanno memorizzata dove sostanzialmente c'è scritto verso quale direzione devono spedire un pacchetto destinato ad un determinato indirizzo IP.

# Livello trasporto
Perché il ritardo di ricezione di pacchetti su Internet ha effetti sull’efficacia di
Utilizzo percentuale della rete?
?
Il ritardo di ricezione dei pacchetti comporta un sottoutilizzo della rete in quanto ogni host che invia i pacchetti deve attendere che il destinatario risponda con un ==ACK== prima di inviarne altri e in quei momenti di attesa la rete non viene utilizzata.

Cosa significa che il livello trasporto realizza un servizio End-to-End? E cosa si intende con multiplexing e demultiplexing dei dati tra mittente e destinatario? 
?
Il Livello trasporto realizza un servizio che indipendentemente dal numero di nodi tra i due host, viene stabilito un canale di comunicazione.
Multiplexing massimizza il numero di comunicazioni possibili su un canale nel caso un più applicazione dello stesso mittente stessero cercando di inviare dati, vengono tutti distinti con delle informazioni oltre ai dati e poi incapsulati in segmenti distinti per essere spediti a livello rete come unico flusso dati.
Il Demultiplexing fa la cosa opposta, una volta arrivato il flusso di dati lo spacchetta e decide quale segmento va in quale socket.

Dove sono implementate, perché sono implementati, da chi sono implementati, e quali aspetti
Rendono diversi il controllo di flusso e il controllo di congestione?
?
Il controllo di flusso e di congestione sono implementati a livello trasporto, servono per garantire un buono smaltimento dei dati da parte dei router, viene implementato dal TCP.
Il controllo di flusso permette di regolare la velocità con cui vengono mandati i pacchetti e quanti ne vengono mandati per regolarsi e capire quanti il router di destinazione riesce a smaltirne.
Il controllo della congestione serve per non sovraccaricare la rete, perché nel caso vengano inviati troppi dati che non riescono a venir processati dal router se altri pacchetti necessitano di passare per quel router, verranno persi.

Cosa sono le fasi di Slow start e congestion avoidance in TCP e a cosa servono?
?
La fase di slow start è quel momento in cui si cerca di capire quanto può essere grande la finestra di trasferimento di dati nella quale si mandano pacchetti di dati sempre crescenti nell'attesa di un ACK 
Mentre Congestion avoidance è la fase in cui si aumenta gradualmente la velocità trasmissione dei pacchetti per cercare di evitare il punto di congestione della rete.

Per quali tipologie di applicazioni UDP è una buona scelta?
?
Le applicazioni che non si interessano dell'arrivo di un ACK oppure gli sarebbe deleterio, applicazioni che necessitano di bassa latenza o applicazioni one-way tipo un broadcast DHCP.

Come funziona un socket TCP tra client e server?
?
Viene aperto il socket a cui si associa un indirizzo IP, il client poi tenta di collegarsi iniziando il three-way-handshake, viene mandata la richiesta al server che risponde, poi il client manda l'ACK per l'ACK e poi avviene lo scambio dei dati, la connessione può essere chiusa da entrambi, con la conferma dell'altro, causando successivamente l'eliminazione del socket e dei buffer.

Come funziona il controllo della congestione in TCP? E in UDP? 
?
In TCP il controllo della congestione funziona usando la sliding window che in base al tempo di arrivo dell'ACK manda proporzionalmente una certa quantità di pacchetti ogni volta che l'ACK arriva si raddoppia la dimensione della finestra e se si manca un ACK la finestra torna alla dimensione di partenza.
Mentre in UDP questo meccanismo non esiste siccome l'ACK non è contemplato in questo protocollo

# Livello applicazione
Quali differenze ci sono tra Authoritative e Top-Level Domain DNS servers?
?
Top level domain (TLD):  sono i server che gestiscono i domini di primo livello come _com_, _org_, _net_, _it_ e così via; hanno un database con i nomi dei domini e gli indirizzi IP associati.
Autoritativi: sono i server che gestiscono i domini di secondo livello e i loro sottodomini; Forniscono la risposta definitiva a una query DNS: indirizzi IP, record ecc...

Cosa possiamo ricavare come informazioni dalla seguente URL:
Https://128.238.251.26:6789/User/Faculty/pippo/html/HelloWorld.Html
?
==Https==: protocollo di applicazione nella sua versione sicura con porta diversa da 80 basato su SSL
==128.238.251.26==: indirizzo IPv4 del server a cui si sta facendo la richiesta, rete di classe B 128.238.0.0/16 con host number: 251.26
==6789==: porta di destinazione della richiesta
==/User/Faculty/pippo/html/==: path del file system riguardante il file chiesto
==HelloWorld.Html==: file richiesto
==.Html==: formato del file richiesto.

Cosa significa che un protocollo è stateless?
?
Un protocollo è stateless se non mantiene in memoria i dati della sessione e quindi una volta chiuso il collegamento tutti i dati vengono cancellati.

HTTP è stateless e se si è possibile renderlo stateful?
?
HTTP è stateless ma un modo per non renderlo tale è utilizzare i cookie che sono una struttura dati che mantiene le informazioni dell'utente in maniera locale.

Persistent e stateful sono la stessa cosa?
?
No perché stateless vuol dire dire che quando la connessione viene chusa tutte le informazioni sullo stato della sessione vengono perse, mentre persitent si riferisce al tipo di connessione la quale rimane aperta finché il client non decide di chiuderla.


#reti2025 