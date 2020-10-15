# -*- coding: utf-8 -*-
"""
Created on Wed Oct 14 12:55:03 2020

@author: Esben Gammelgaard
"""


import pandas as pd
import timeit
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score

test_size = 0.5

observations_list = [1000, 2000, 3000, 4000]
k_list = [1, 3, 5, 10, 20]

#%% Importing data
path = "C:\\Users\\esbe1\\Desktop\\Portfolio\\mnist_train.csv"

# Read dataset to pandas dataframe
dataset_org = pd.read_csv(path)


#%% Loops
results = []
results_time = []

for obs in (observations_list):
    dataset = dataset_org.loc[:obs-1 ,:]
    temp = []
    temp_time = []
    
    for k_i in k_list:
        start = timeit.default_timer()

#%% splitting for train and test 
        
        mnist = dataset.iloc[:, :-1].values
        mnist_labels = dataset.iloc[:, 0].values
        
        mnist_train, mnist_test, mnist_train_labels, mnist_test_labels = train_test_split(mnist, mnist_labels, test_size=test_size)
        
        #%% Training the predictor
        
        classifier = KNeighborsClassifier(n_neighbors=k_i)
        classifier.fit(mnist_train, mnist_train_labels)
        
        #%% Predicting the values of test data 
        
        mnist_pred = classifier.predict(mnist_test) 
        
        #%% Evaluating the performance
        
        stop = timeit.default_timer()
        temp_time.append(stop-start)
        temp.append(accuracy_score(mnist_test_labels, mnist_pred))
    results.append(temp)
    results_time.append(temp_time)
        #print(confusion_matrix(mnist_test_labels, mnist_pred))
        #print(classification_report(mnist_test_labels, mnist_pred))
#%%
results = pd.DataFrame(results)
results_time = pd.DataFrame(results_time)