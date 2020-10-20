# Digit recongnition using KNN in RStudio, Python & SAS

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

#### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

## Experiment setup
The goal is to use the KNN algorithm to classify the digits in the 10 different classes ranging from 0 to 9. The split between training and test is 50/50. Amount of observations included is 100 training and 1000 test, with the K-value of 1.

## RStudio Results
#### Confusion Matrix
| Prediction / Reference | 0  | 1   | 2  | 3  | 4  | 5  | 6   | 7   | 8  | 9  |
|------------------------|----|-----|----|----|----|----|-----|-----|----|----|
| 0                      | 89 | 1   | 0  | 0  | 0  | 0  | 2   | 0   | 0  | 1  |
| 1                      | 0  | 103 | 0  | 0  | 0  | 0  | 0   | 1   | 0  | 0  |
| 2                      | 0  | 4   | 86 | 0  | 1  | 0  | 0   | 5   | 3  | 0  |
| 3                      | 1  | 1   | 4  | 76 | 0  | 11 | 0   | 1   | 2  | 2  |
| 4                      | 0  | 6   | 1  | 0  | 81 | 1  | 2   | 1   | 1  | 16 |
| 5                      | 1  | 0   | 0  | 6  | 0  | 76 | 3   | 0   | 1  | 2  |
| 6                      | 1  | 0   | 0  | 0  | 1  | 1  | 103 | 0   | 0  | 0  |
| 7                      | 0  | 1   | 0  | 0  | 0  | 2  | 0   | 101 | 0  | 3  |
| 8                      | 2  | 1   | 0  | 1  | 1  | 3  | 3   | 0   | 70 | 4  |
| 9                      | 1  | 1   | 0  | 1  | 5  | 0  | 0   | 5   | 0  | 97 |
#### Accuracy 
The accuracy aqired was .882
#### Run Time
The run time for the prediciton inlducing both training and testing was 5.5 seconds. 

## Python Results
#### Accuracy
| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|--------------|-------|-------|-------|--------|--------|
| 1000         |  0.85 |  0.84 |  0.83 |   0.80 |   0.79 |
| 2000         |  0.90 |  0.89 |  0.88 |   0.86 |   0.81 |
| 3000         |  0.91 |  0.90 |  0.89 |   0.87 |   0.86 |
| 4000         |  0.93 |  0.92 |  0.91 |   0.91 |   0.89 |
#### Run Time [s]
| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|--------------|-------|-------|-------|--------|--------|
| 1000         |  0.48 |  0.48 |  0.47 |   0.47 |   0.48 |
| 2000         |  1.78 |  1.77 |  1.80 |   1.76 |   1.76 |
| 3000         |  3.48 |  3.43 |  3.43 |   3.43 |   3.66 |
| 4000         |  6.85 |  6.75 |  6.94 |   6.74 |   6.84 |

## SAS Results
#### Accuracy
Missing
#### Run Time [s]
Missing

##  Results Conclusions
From the table above the trend seems to be that the larger amount of observations used the higher the accuracy can be achieved. Furthermore it can be seen that for all the included amounts of observations the best accuracy is achieved by using smaller K-values in the 1 to 3 area.

