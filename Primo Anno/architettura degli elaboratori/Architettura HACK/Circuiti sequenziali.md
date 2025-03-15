---
tags: []
aliases:
  - flip flop
data: "`2024-08-31 20:05`"
---
- a differenza di quelli combinatori permettono di memorizzare dei valori
- un tipico circuito sequenziale è il _latch SR_: 
	- ![[Pasted image 20240528190603.png]]
	- Il funzionamento di un circuito sequenziale è possibile grazie all'attrito dei cavi e al tempo di risposta delle porte logiche utilizzate che non è istantaneo ma richiede qualche $\mu S \ o\  nS$
	- Se S=1 e R=1 allora si incappa in alcuni problemi e per questo non viene mai usata questa configurazione
- Per evitare lo stato indesiderato S=R=1 si usa un latch D che ha un solo ingresso e il segnale di clock
	- ![[Pasted image 20231016131626.png]]
	- questa configurazione impedisce l'insorgere della condizione "11" che nel latch SR non poteva esistere
- ## FLIP FLOP:
- è un circuito logico con due stati stabili che cambia di stato solo quando il clock cambia di valore.
- Quello più usato è il DFF:
	- ![[Pasted image 20240528191510.png]]
- guardando il risultato al cambio del fronte è più comodo rispetto a guardare i risultati a seconda del livello del clock perché guardando il fronte si ha un intero periodo per leggere i risultati e quindi averlo più stabile; i flip flop fanno questa cosa.
- ![[Pasted image 20231016163050.png]]
	- load permette di memorizzare, prima che diventi 0, il valore di "in" 
- ###### come realizzare una memoria di w bit
	- load condiviso da tutti i FF 
- Contatore: usato per realizzare il Program Counter
- Memorie con n locazioni: 
	- Creata con n w-bit register che vengono controllati da un circuito specifico([[direct access logic]]) che indica quale dei registri verrà letto o scritto(se load è attivo)



