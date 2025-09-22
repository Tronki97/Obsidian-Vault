
- #### Concetti:
	- Terminale: 
		- javac: si usa per compilare un file .java; se voglio compilare tutti i file in una cartella posso andare in quella precedente e fare:
			- javac $dir/^*.java$ dove dir sarebbe la cartella.
		- java: esegue il file specificato (ogni codice ha le sue modalità di esecuzione).
		- javadoc: crea la documentazione automatica java.

#### Ereditarietà
la relazione di sottoclasse viene espressa con `extends`

creo la classe B, con metodi e variabili.

```java
public class A extends B 
{

}
```
visto che la classe A estende la B si può dichiarare A come classe B e non ci sono warnings.

per far si che le classi A e B (che sono classi con file a se stanti) basta che siano inserite nella stessa cartella della classe main la quale è anch'essa un file a se stante.

- private: metodi all'interno stessa classe possono accedere a questo metodi 
- protected: tutti i metodi che estendono la classe possono accedere a questi campi.


se un metodo viene definito come  `final` non può essere sovrascritto. Se una classe viene definita in questo modo non può essere estesa.

- Object: è la Super-classe di tutte le [[Classi]] in java.
	un metodo della classe è `toString()` che restituisce il tipo di classe e il suo codice hash.

- `instanceof` vuol dire essere la classe o una delle possibili sottoclassi.

#### interfaccia iterable
metodi:
	`Iterator<T> iterable();` 






