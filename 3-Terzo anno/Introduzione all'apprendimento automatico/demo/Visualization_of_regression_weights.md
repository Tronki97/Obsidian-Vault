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

<!-- #region id="xmWATk1Cmned" -->
Si applica la regressione su un dataset [[Distribuzione congiunta#^869936|mnist]] e si mostra una visualizzazione dei pesi per le diverse classe in forma di immagine
<!-- #endregion -->

```python id="1akpNAGvc_UF"
import time
import matplotlib.pyplot as plt
import numpy as np

from sklearn.linear_model import LogisticRegression
from keras.datasets import mnist
```

<!-- #region id="0Qcwap_Nm0T7" -->
Si carica il mnist dataset.
<!-- #endregion -->

```python id="5-egvi-XdW0d"
# MNIST dataset
(X_train, y_train), (X_test, y_test) = mnist.load_data()

X_train = X_train.reshape(60000,784)
X_test = X_test.reshape(10000,784)
```

<!-- #region id="aoySr44wnI1O" -->
Si istanzia un classificatore logistico, e poi si fitta sul modello 
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/"} id="paofpDYe7WhF" outputId="1d80c661-e20a-4d40-eed7-0b092671b33e"
# Turn up tolerance for faster convergence
clf = LogisticRegression(C=0.01,
                         multi_class='multinomial',
                         penalty='l1', solver='saga', tol=0.1)
clf.fit(X_train, y_train)
sparsity = np.mean(clf.coef_ == 0) * 100
score = clf.score(X_test, y_test)

print("Sparsity with L1 penalty: %.2f%%" % sparsity)
print("Test score with L1 penalty: %.4f" % score)
```

<!-- #region id="GQa9jADZoGGs" -->
Visto che, per ogni classe, si ha un peso per ogni feature in input e ogni feature in input sono dei pixel, si può rappresentare il peso come immagini della stessa forma degli input 
<!-- #endregion -->

```python colab={"base_uri": "https://localhost:8080/", "height": 339} id="JtvHojKy7yKa" outputId="ad3bf6fd-b88a-4c1d-8ec0-e80dcbf1b012"
coef = clf.coef_.copy()
plt.figure(figsize=(10, 5))
scale = np.abs(coef).max()
for i in range(10):
    l1_plot = plt.subplot(2, 5, i + 1)
    l1_plot.imshow(coef[i].reshape(28, 28), interpolation='nearest',
                   cmap=plt.cm.RdBu, vmin=-scale, vmax=scale)
    l1_plot.set_xticks(())
    l1_plot.set_yticks(())
    l1_plot.set_xlabel('Class %i' % i)
plt.suptitle('Classification vector for...')
plt.show()
```
