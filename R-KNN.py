# -*- coding: utf-8 -*-
"""
Created on Wed Oct 14 12:55:03 2020

@author: Esben Gammelgaard
"""

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd


observations = 2000
test_size = 0.5
k = 1

#%% Importing data
path = "C:\\Users\\esbe1\\Desktop\\Portfolio\\mnist_train.csv"

# Read dataset to pandas dataframe
dataset = pd.read_csv(path)
dataset = dataset.loc[:observations-1 ,:]
#%% splitting for train and test 
from sklearn.model_selection import train_test_split

mnist = dataset.iloc[:, :-1].values
mnist_labels = dataset.iloc[:, 0].values

mnist_train, mnist_test, mnist_train_labels,mnist_test_labels = train_test_split(mnist, mnist_labels, test_size=test_size)

#%% Training the predictor

from sklearn.neighbors import KNeighborsClassifier
classifier = KNeighborsClassifier(n_neighbors=k)
classifier.fit(mnist_train, mnist_train_labels)

#%% Predicting the values of test data 

mnist_pred = classifier.predict(mnist_test) 

#%% Evaluating the performance

from sklearn.metrics import classification_report, confusion_matrix
print(confusion_matrix(mnist_test_labels, mnist_pred))
print(classification_report(mnist_test_labels, mnist_pred))

