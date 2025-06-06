---
tags: []
aliases: 
data: "`2025-01-31 12:01`"
---
- # Esigenza di uno standard:
	- Esistono dozzine di codifiche a 8 bit per alfabeti non latini e per simboli speciali.
	- Queste codifiche non sono compatibili tra loro in quanto esistono diverse interpretazioni per caratteri dentici
		- vedi [[Set di caratteri#^e0dc57|l’esempio della P]]
- # Unicode e ISO/IEC 10646:
	- Sono definite codifiche a lunghezza fissa (UCS-2 e UCS-4), e codifiche a lunghezza variabile (UTF-8, UTF-16 e UTF-32)
	- l’ultima versione definisce $154.998$ caratteri in 168 script diversi, con in più $140.000$ a scopo privato (_Private Use Area o PUA_)
		- ## Script moderni:
			- Latino, greco, cirillico, ebraico, arabo, giapponese, cinese, ecc….
		- ## Script antichi:
			- geroglifici, lingue inventate(come l’_elfico_ e _klingon_), lettere antiche ecc…
		- ## Script speciali:
			- simboli vari di punteggiatura, matematici e altro
- # Principi dell'Unicode:
	- ## Repertorio universale:
	    - contiene tutti i caratteri che possono essere rappresentati.
	- ## Efficienza:
		- Unicode è progettato per essere efficiente per la memorizzazione e la trasmissione dei dati.
	- ## Caratteri, non glifi:
		- non vengono considerati i font, esiste un solo carattere $A$ indipendentemente dal numero di font esistenti.
	- ## Semantica:
		- Ogni carattere possiede un suo significato preciso (la ß tedesca è diversa dalla ß greca) 
	- ## Testo semplice:
		- I codepoint rappresentano caratteri di testo semplice, senza descrizioni grafiche o tipografiche (non c’è il grasseto).
	- ## Ordine logico:
		- le sottosequenze di uno stesso alfabeto seguono l'ordine naturale alfabetico dei parlanti
	- ## Unificazione:
	    - Unicode unifica caratteri comuni(con lo stesso significato) a linguaggi diversi, come le lettere accentate e non accentate.
	- ## Stabilità:
	    - Unicode è progettato per essere stabile e non cambiare nel tempo.
	- ## Convertibilità: 
		- Unicode è progettato per essere facilmente convertibile in altre codifiche.
- # UCS-2 UCS-4:
	- _UCS-2_ è una codifica a lunghezza fissa di 2 byte estensione di [[Set di caratteri|ISO Latin 1]].
	- _UCS-4_ è una codifica a lunghezza fissa di 4 byte. estensione di UCS-2. Diviso in gruppi, piani, righe e celle.
		- ![[Pasted image 20250131124951.png|| 750]]
	- In UCS-4 esistono 17 piani, ognuno con $2^{16}$ righe e $2^{16}$ celle.
		- ___piano 0___: (_BMP_ o _Basic Multilingual Plane_): alfabeti moderni
		- ___piano 1___: (SMP o Supplementary Multilingual Plane): alfabeti antichi
		- ___piano 2___: (SIP o Supplementary Ideographic Plane): ulteriori caratteri ideografici CJK (cinese, giapponese, coreano) non presenti in BMP.
		- ___piano 3___: (TIP o Tertiary Ideographic Plane): caratteri cinesi antichi
		- ___piano 14___: (SSP o Supplementary Special-purpose Plane): Caratteri tag in disuso
		- ___piani 15 e 16___: _Private Use Areas_  
- # UTF-8:
	- permette di accedere a tutti i caratteri definiti di UCS-4, ma utilizza un numero compreso tra 1 e 4 byte per farlo.
		- I codici compresi tra 0 - 127 (ASCII a 7 bit), e richiedono un byte, in cui ci sia 0 al primo bit
		- I codici derivati dall'alfabeto latino e tutti gli script non-ideografici richiedono 2 byte.
		- I codici ideografici (orientali) richiedono 3 byte.
		- I codici dei piani alti richiedono 4 byte.
	- se il primo bit è 0, si tratta di un carattere ASCII di un byte.
		- ![[Pasted image 20250131125636.png]]
	- se i primi 2 bit sono 11, si tratta di un carattere appartenente ad un alfabeto non ideografico.
		- ![[Pasted image 20250131125711.png]]
	- se i primi 3 bit sono 111, si tratta di un carattere ideografico.
	    - ![[Pasted image 20250131125759.png]]
	- Se i primi quattro bit sono 1111, si tratta di un carattere che in UTF-16 utilizza coppie di surrogati (caratteri appartenenti ad un piano non BMP ma già precisato).
		- ![[Pasted image 20250131125840.png]]
	- ## Riassunto:
		- ![[Pasted image 20250131125907.png]]
- # Problemi comuni:
	- ![[Pasted image 20250131130238.png]]
	- ## ES:
		- ![[Pasted image 20250131130323.png]]
		- il carattere “è” occupa in UCS-2 la posizione _00E9_.
			- ![[Pasted image 20250131130413.png||700]]
		- Se il carattere UTF-8 _00E9_ viene interpretato come ISO Latin-1, viene letto come una sequenza di due caratteri, _C3 A9_, corrispondente a “Ã©”
- # Link Utili:
	- 