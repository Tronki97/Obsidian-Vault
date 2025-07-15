---
tags: []
aliases: 
data: "`2025-04-29 16:38`"
---
- # Livello MAC nelle reti Wireless:
	- è un algoritmo che governa l'accesso distribuito all'unico canale condiviso che abbiamo.
	- Ci si pone su una rete ethernet cablata, con segnali che viaggiano sulla rete locale.
		- Per trasmettere quando si ha bisogno senza scontrarsi con gli altri si usa il _protocollo MAC ethernet IEEE 802.3_ 
- # Ethernet:
	- Prima di parlare si controlla se ci sono segnali sulla linea 
	- Si fa early detection della collisione di segnali e in caso la rilevasse:
		- Si smette di parlare in mezzo alla comunicazione evitando di sprecare energia in più, così facendo liberando spazio nel canale..
	- Però appena ci si è interrotti quando è il momento buono per riprovare a comunicare?
		- In teoria appena il canale è libero.
		- Ma va meglio se si randomizza il tempo da aspettare prima di ricominciare a parlare.
			- Così la probabilità di una nuova collisione è molto più bassa visto che i numeri casuali generati dai 2 utenti (rappresentanti l'attesa) che hanno colliso probabilmente saranno diversi
- Nel [[Reti Wireless]] il protocollo deve controllare non solo se c'è qualcuno che sta parlando ma anche dove si trova visto che il decadimento del segnale nelle onde radio è molto ripido.
	- Quindi si cerca di separare il segnale in diversi canali solo che questa operazione è costosa.
- Per verificare se c'è una collisione nel caso del wireless nel caso in cui ci sia un ricevente lontano dal trasmettitore
	- ![[Pasted image 20250429174952.png||400]]
	- In quel caso il trasmettitore non rileverà mai collisioni e quindi sarà compito del ricevitore farlo per poi mandare un pacchetto al trasmettitore che gli dice di trasmettere i dati visto che c'è spazio per andare.