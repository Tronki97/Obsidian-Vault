---
jupyter:
  jupytext:
    formats: ipynb,md
    main_language: python
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.18.1
  kernelspec:
    display_name: Python 3
    name: python3
---

<!-- #region id="iirbOeNx9weF" -->
# A simple example of Decision Tree
In questo script è presente un esempio di classificazione usando gli [[Alberi di decisione]]. Si occupa di _illustrare e visualizzare l'albero_
<!-- #endregion -->

```python id="Pn2K5lT17A7d" jupyter={"is_executing": false}
from sklearn import tree
```

<!-- #region id="0zGY9yGY_PWQ" -->
Il dataset è molto semplice: ogni input è una sequenza di 4 valori booleani ($X_{0},X_{1},X_{2},X_{3}$) ma è stato concepito per mettere in difficoltà l'albero visto che l'output $Y$ dipende dalla comparazione dei due input, vale a dire $Y$ è `X2==X3`  
<!-- #endregion -->

```python id="TcxfmuYN7KMg"
X = [[0,0,0,0], [1,0,0,0], [0,0,0,1], [0,0,1,0], [0,0,1,1], [0,1,0,0], [0,1,0,1], [1,1,0,1], [0,1,1,0], [0,1,1,1]]
Y = [0,0,1,1,0,0,1,1,1,0]
```

```python id="0EKm1ZOD7Rt1"
clf = tree.DecisionTreeClassifier(criterion='entropy', random_state=0)
```

```python id="gYjLyGyX7kDk"
clf = clf.fit(X, Y)
```

<!-- #region id="tDhCi3NOArtM" -->
Procediamo a predire un nuovo risultato 
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/"} id="m_sO8XhK7ogD" outputId="c74e9280-f26f-40ef-fb87-69ecbb697e09"
print(clf.predict([[1,1,1,1]]))
```

<!-- #region id="cxZAE5-6A8PR" -->
Una delle caratteristiche più interessanti degli alberi di decisione è la possibilità di visualizzare il classificatore come un albero effettivo.
<!-- #endregion -->

```python id="su72Wnsw8DHN"
tree.export_graphviz(clf, out_file='tree.dot')
!dot -T png tree.dot -o tree.png
```

```python colab={"base_uri": "https://localhost:8080/", "height": 653} id="qLGD0vVU8wGv" outputId="ba296c46-836e-4983-b4ff-f928160ec9fa"
from IPython.display import Image
Image('tree.png') #, width=100, height=100)
```

<!-- #region id="wWSpqqqVBOY9" -->
In questo caso, il [[Alberi di decisione#^b53b4a|guadagno informativo]] di ogni feature non è un buon metodo di scelta  

Un'altra funzionalità interessante è la possibilità di calcolare " l'importanza " di ogni feature 
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/"} id="Nf2w9712A24C" jupyter={"is_executing": false} outputId="e334a34c-b00b-44f0-b0b6-0754e46f12ff"
print(clf.feature_importances_)
```

<!-- #region id="iRFZKhYFBl6M" -->
Anche se il criterio di selezione non è un granché, il classificatore capisce comunque che le features $X_{2}$ e $X_{3}$ sono più "rilevanti" rispetto alle altre

Questo perché l'importanza è calcolata a posteriori per ogni albero di decisione, tramite la quantità che migliora la misura della performance di ogni attributo divisore, pesata dal numero di osservazioni di cui quel nodo è responsabile. 
<!-- #endregion -->
