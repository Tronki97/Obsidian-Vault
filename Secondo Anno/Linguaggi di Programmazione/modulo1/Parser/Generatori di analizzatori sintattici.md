---
tags:
  - TODO
aliases:
  - YACC
  - struttura file YACC
  - .y
data: "`2025-08-20 18:08`"
---
- # YACC:
	- Tecniche $LR$ ([[Parser bottom-up#^2f2330|shift]] - [[Parser bottom-up#^94ff73|reduce]]) sono automatizzate da molti strumenti
	- Il capostipite di questi strumenti è _YACC_ (_Yet Another Compiler-Compiler_), un altro è _GNUBison_
	- In _input_ prende la _specifica YACC_ (`translate.y`) il quale contiene la descrizione della [[Grammatiche#^c95cdc|grammatica libera]] 
	- In _output_ restituisce `y.tab.c` ovvero un programma in $C$ che realizza il [[Parser bottom-up#^d6df98|parser LALR(1)]] con costruzione diretta (_non vista a lezione_)
	- Il file `.c` è pronto per essere compilato e trasformato in eseguibile (`.out`) dal compilatore $C$.
	- Questo eseguibile prende un input (_lista di token_) dando un output (_lista di derivazione/albero sintattico_).
	- ## Realtà dei fatti:
		- ![[Pasted image 20250820195927.png]]
		- L'analizzatore sintattico usa quello lessicale come _subroutine_
		- Lo invoca con `yylex()` per richiedere il token successivo (_on demand_)
		- Alcune variabili comuni ai due programmi permettono di scambiare informazioni
			- Come ad esempio `yyval` dove il [[LEX]] mette il [[Linguaggi regolari#^114588|lessema]] appena individuato.
- # Struttura file YACC:
	- ## % {prologo %}:
		- Parte opzionale che contiene definizioni di macro e altre dichiarazioni di variabili o funzioni che saranno usate nelle sessioni seguenti
		- Viene copiato da YACC nel suo output in modo da precedere la definizione della funzione che effettivamente farà l' [[Analisi sintattica]]
	- ## Definizioni:
		- Contiene dichiarazioni di simboli usati nella descrizione della grammatica come i _nomi di token, condivisioni con lex_
		- In questa sezione si può dichiarare la precdenza e l'associatività di alcuni terminali/operazioni
	- ## Regole:
		- Una produzione della forma:
			- $NT \to corpo_{1}\ |\ ...\ |\ corpo_{k}$
			- Espressa in YACC con le regole. 
			- ### NT :
				- Stringa alfanumerica non dichiarata in precedenza come token
			- ### Corpo:
				- Codice `C` eseguito al momento in cui il parser riduce mediante quella produzione.
		- _Un carattere tra i singoli apici come 'a', è un terminale_
		- _il simbolo iniziale della grammatica è il NT usato nella prima regola_.
	- ## Funzioni ausiliarie:
		- Contiene le funzioni di supporto per la generazione del parser un esempio è:
			- `yylex()` che invoca l'analizzatore lessicale e che restituisce il _nome del token_ e il suo _valore_ (nella variabile `yyval`) 
		- Contiene almeno:
			- `yylex()`, se il parser generato da YACC è creato senza usare il LEX
			- Oppure `#include "lex.yy.c"` se il parser viene generato sia da LEX che da YACC
- # Azione semantica:
	- L'azione semantica (codice `C`) calcola il _valore semantico_ della _testa della produzione_ in funzione dei valori semantici dei simboli che compongono il corpo 
	- ## ES:
		- Il valore semantico potrebbe essere:
			- A) _l'albero di derivazione_, nel caso in cui si stia producendo un compilatore che genera alberi esplicitamente.
			- B) _il codice intermedio_, connesso alla produzione, se si produce direttamente codice intermedio.
			- C) _la vera e propria valutazione dell'espressione_, se si sta producendo un [[Interprete]]  
	- ${\$\$}$:
		- Si riferisce al valore semantico della testa.
	- ${\$}i$:
		- Si riferisce al valore semantico dell'i-esimo simbolo nel corpo della produzione.
- # Esempio di file .y:
  
```y
%{ /* PROLOGO */ 
	#define YYSTYPE double 	//dichiaro il tipo della pila interna di YACC per i valori semantici
	#include <math.h> //libreria C per le funzioni matematiche
	#include <stdio.h> //libreria C con macro per input/output
%}
/*DEFINIZIONI*/
	%token NUM //definisco il tipo di token NUM la cui vera definizione è nel file LEX .l
	%left '-' '+' //token di un carattere ma non devono per forza essere definiti token 
	%left '*' '/'  //left vuol dire che sono associativi a sinistra 
	%right NEG //il meno unario, specifica la precedenza tra gli operatori
%% /*REGOLE E AZIONI SEMANTICHE*/
	input:	/*empty */
		| input line
	; vuol dire che input può essere o vuoto o "input line"
	line: '\n' //a capo= linea vuota
		| exp '\n' {printf("%g\n", $1);}
	;// il printf stampa in formato "reale" seguito da a capo.
/*L'input è un file con un'espressione su ogni riga e il parser/interprete stampa il valore di 				ciascuna espressione, una per riga, DA NOTARE che gli operatori dichiarati sulla stessa riga hanno uguale precedenza/priorità e che un operatore ha precedenza su tutti gli altri operatori delle linee precedenti*/
	exp: NUM 		{$$ = $1;}
		|exp '+' exp {$$=$1 + $3;}
		|exp '-' exp {$$=$1 - $3;}
		|exp '*' exp {$$=$1 * $3;}
		|exp '/' exp {$$=$1 / $3;}
		|'-' exp %prec NEG {$$=-$2;} //ha precedenza massima 
		| '(' exp ')'  {$$=$2;}
%% /*Funzioni ausiliarie*/
	#include "lex.yy.c"	
```
- La tabella $LALR(1)$ generata da YACC potrebbe generare conflitti poiché $G$ è ambigua
- si possono risolvere i conflitti Usando le info aggiuntive su:
	- Associatività
	- Precedenza operatori
- # Riassunto:
	- Senza indicazioni YACC risolve:
		- Conflitti di tipo [[Parser bottom-up#^{2f2330|shift]] / [[Parser bottom-up#^{94ff73|reduce]] a favore dello _shift_
		- Conflitti del tipo _reduce/reduce_ a favore della produzione elencata per prima.
		- Si può invocare YACC con l'opzione `-v` la qualw genera un file aggiuntivo `y.output` che contiene i kernel degli insiemi degli item trovati per la [[Grammatiche|grammatica]], una descrizione dei conflitti generati dall'algoritmo LALR, ed anche una rappresentazione leggibile della tabella di parsing che mostra come i conflitti sono stati risolti.
- # Link Utili:
	- 