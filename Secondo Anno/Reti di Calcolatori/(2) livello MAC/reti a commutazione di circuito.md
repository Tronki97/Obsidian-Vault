---
tags: []
aliases: 
data: "`2024-09-27 13:19`"
---
- # reti a commutazione di circuito:
	- come la linea telefonica
	- quando un sistema di rete A vuole dialogare con D che è molto lontano ci si affida ai sistemi B e C intermedi senza riferirsi a loro durante la comunicazione. 
		- ![[Pasted image 20240927133352.png]]
		- la commutazione di circuito prevede la comunicazione sul canale verde tramite una richiesta al protocollo un _canale riservato_ agli host vicini e quindi permette solo a quelli ai capi del canale verde di comunicare. 
	- ## Vantaggi:
		- gli oggetti A e D (verdi) possono parlare come fossero [[Infrastruttura e collegamenti di rete#^fe68f0||punto a punto]] e quindi non si rischia la collisione con nessun altro host.
		- non c'è il bisogno di specificare il mittente e destinatario perché appunto si è punto a punto. 
			- Risparmiando spazio altresì riservato a quelle informazioni.  
		- basso ritardo nello spedire l'informazione 
			- l'unico caso in cui c'è molto ritardo è la creazione di questo canale riservato ma dopo averlo creato non ci sarà mai più.