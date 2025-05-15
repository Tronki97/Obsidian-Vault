Quando il canale nella quale utente mette la password, non è sicuro 
Servono tecniche _One-time-password_ dove possono essere trasmesse in chiaro ma sono utilizzabili sono una volta 

O trasmetti la password crittata 
- crittografia simmetrica o asimmetrica 

## schema challeng-response 
- U dichiara l'intenzione di accedere all'host 
- host seleziona una challenge e la manda a U 
- U computa la risposta alla challenge e la rimanda all'host 
	- se risposta computata e risposta aspettata combaciano, allora entra 
- _One time password_

### usando crittografia simmetrica 
- utente U condivide segreto K (password) con l'host
- U dichiara l'intenzione di accedere 
- Host genera una stringa random chal e la manda a U (e se la ricorda)
- U computa la risposta come resp = Ck(chal) e la manda all'host 
- host compara chal con Dk(resp)
- solo U può rispondere alla sfida con la risposta giusta, perchè conosce la chiave K (che è la sua password) 

### usando cifratura simmetrica 
Host tiene un file di tutte le chiavi pubbliche degli utenti 
- U dichiara intenzione 
- Host genera stringa chal 
- U risponde con firmando la sfida con la sua chiave privata 
	- resp = Sign(chal) 
- Host verifica la firma (usando la chiave pubblica che possiede) 

### one time pw usando One way hash 
- host genera un numero R per utente U 
- host computa x0 = R, x1 = f(x_0), x2= f(x1)
	- f è una one-way hash function 
- U porta con sè la lista dei numeri x0...x99 mentre host mantiene solo il valore x100 abbianto all'utente U 
- U per autenticarsi manda il suo nome e il suo valore x99  (y)in chiaro 
- il sistema computa f(y) e lo compara con x100 memorizzato 
- se sono uguali U può entrare 
- U cancella x99 dalla propria lista e host rimpiazza x100 con x99

