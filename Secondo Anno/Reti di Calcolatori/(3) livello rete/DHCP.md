---
tags: []
aliases: 
data: "`2024-11-20 15:31`"
---
- # Argomento:
	- l’assegnazione dei numeri di rete di [[Indirizzamento IPv4#^c84a48|classi di rete]] vengono delegate ad enti e organizzazioni che ne fanno richiesta.
- # Assegnazione dei numeri di host:
	- dare l’host ad una macchina manualmente associandolo al [[MAC-address]], e se lo tiene per sempre (_statico_)
	- la macchina può cambiare indirizzo quando ce n’è bisogno (_dinamico_)
- # Protocollo DHCP:
	- _dynamic host configuration protocol_
	- è un metodo automatico per le reti Wi-Fi domestiche, reti locali.
	- è un servizio di assegnazione dell’indirizzo IP agli host che ne fanno richiesta.
	- questo protocollo associa degli indirizzi IP ai [[MAC-address|MAC]] che lo richiedono 
	- per rilevare il router di un WiFi a cui accedere, il dispositivo fa un broadcast assoluto per rilevare le reti:
		- fa un [[Protocollo ICMP#^be5400|ping]] a `255.255.255.255` 
		- poi se è presente nel pacchetto di broadcast il DHCP, viene mandata la richiesta (_DHCP-request_) al DHCP-server
	- ogni host connesso al router manda un segnale di _liveness_ per dire che il dispositivo è ancora “vivo” e comunicante.
	- ogni router concede un tempo di _lease_ nel quale l’host può rimanere connesso alla rete. Scaduto il tempo l’host viene pingato dal router per sapere se il dispositivo è ancora connesso. 
		- se non arriva nessuna risposta il dispositivo per comunicare di nuovo dovrà rimandare la _DHCP request_