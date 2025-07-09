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
![[Pasted image 20250709125932.png]]
?
La seconda riga presenta un errore siccome la somma dei bit in modulo 2 è diversa dal bit di parità 0
Inoltre per lo stesso motivo anche le colonne 2,3,4,5 risultano con degli errori.

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

# Livello trasporto
Perché il ritardo di ricezione di pacchetti su Internet ha effetti sull’efficacia di
Utilizzo percentuale della rete?
?
Il ritardo di ricezione dei pacchetti comporta un sottoutilizzo della rete in quanto ogni host che invia i pacchetti deve attendere che il destinatario risponda con un ==ACK== prima di inviarne altri e in quei momenti di attesa la rete non viene utilizzata.

# Livello applicazione
Quali differenze ci sono tra Authoritative e Top-Level Domain DNS servers?
?
Top level domain (TLD):  sono i server che gestiscono i domini di primo livello come _com_, _org_, _net_, _it_ e così via; hanno un database con i nomi dei domini e gli indirizzi IP associati.
Autoritativi: sono i server che gestiscono i domini di secondo livello e i loro sottodomini; Forniscono la risposta definitiva a una query DNS: indirizzi IP, record ecc...



#reti2025 