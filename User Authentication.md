Autenticazione è alla base di autorizzazione 

## password-based 
**problemi: forza bruta** 
- è sempre una stringa finita -> forza bruta 
- può essere reso improbabile: 
	- P probabilità di indovinare una password in tempo T 
	- G tentativi che posso fare al secondo 
	- N spazio di password 
	- P proporzionale a  (G x T) /N
	- Abbassimo P, riducendo il tempo T (con il password aging, un tot di tempo dopo la quale siamo costretti a cambiare password) o aumentando lo spazio N (password lunghe e complesse) o riducendo G (artificialmente) 

**problemi: on-line attack**
- il sistema sottoattacco è usato per valutare se un tentativo ha avuto successo o meno 
- Difese: 
	- inserire ritardo tra un tentativo e l'altro 
	- limitare numero di tentativi possibili prima di bloccare l'account
**off-line attack**
- attacchi fatti su un sistema diverso rispetto a quello che stiamo cercando di compromettere 


## come memorizzare pw? 
Il sistema operativo salva le password su un file con access control 
- problema per privileged user 
- basta memorizzarle _cifrate_ sul file

_cifratura_
- hash one-way: file mantiene i digest di questo hash 
	- al login basta computare il digest della password fornita dall'utente e confrontrla con quello sul file 
	- posso fare questa conclusione per la proprietà hiding 

### attacco di tipo dictionary 
Si prende file di password cifrate, e un file (dictionary) che è fonte di parole utilizzabili come password 
- per ogni parola del dictionary ci si calcola il digest e si confronta con le password 
- _hash one way_: non è un segreto il tipo di algoritmo viene usato, è informazione di dominio pubblico 
- ci sono già programmi che lo fanno 
![[Pasted image 20250515155711.png|400]]

### come difendersi da dic att 
Si può limitare l'accesso del file di password solo agli amministratori 
Oppure abbassare il ritmo dei tentativi 
- questo è  un attacco che viene fatto off-line (in un sistema diverso da quello sotto attacco) quindi in realtà non abbiamo accesso al ritmo dell'attacco 

Possiamo scegliere hash one way pesante 
- potrebbe rallentare l'attaccante 
- _es_ applicare DES 25 volte ad un blocco di 0 usando la pw come chiave 

**Salting** di passwords per prevenire attacchi globali 

password **Shadow** : separa le password crittate da altre informazioni che sono tipicamente contenute nel file delle password (nome dell'utnete, numero di telefono) 


### salting 
Invece di memorizzare una password di un utente U, il sistema memorizza per utente U due quantità:
- **S** (salt):  numero random gneerato dal sistema 
- **Q** : il digest contenuto con dalla concatenazione tra la Password e il Salt 
- Solo S e Q sono salvati nel file delle password 

Quando utente si vuole autenticare si identifica come U e con la password P
- il sistema legge S e Q associati a U 
- concatena S con P e applica f per ottenere Q* 
- compare i due 
- se Q* = Q allora autenticazione 
Se un attacker può leggere il file delle password, ottiene **S e Q** e non può risalire a P da lì 

Salting of passwords prevents global attacks exploiting the fact that many users use the same password for multiple services or systems

### Unix Shadow Passwords 
In sistemi unix i password digest stanno in _etc/passwd_ accessibili a tutti perchè contiene tante informazioni utili a far funzionare il sistema 

_/etc/shadow_:  separa le password da tutte le info ausiliarie 
- x: sul file delle password indica che la password non è lì ma che sta nello shadow 
![[Pasted image 20250515161445.png]]
- file shadow è accessibile solo a super utente (amministratore di sistema) 

ha saltato tutto ed è andato a Biometrics 

**Login spoofing**: un attaccante crea un programma che genera una finta finestra per il login 
## biometrics
Per scegliere il biometric giusto
- Universalità 
- Unicità 
- permanenza: non deve cambiare 
- acquisibilità: deve essere facile da acquisire 