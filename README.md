# Digit recongnition using KNN in RStudio

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

#### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

## Results from R-KNN
The goal is to use the KNN algorithm to classify the digits in the 10 different classes ranging from 0 to 9. The split between training and test is 50/50. Amount of observations included is 1000 training and 1000 test, with the K-value of 1.
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
The accuracy aqired was 0.88
#### Run Time
The run time for the prediciton inlducing both training and testing was 5.5 seconds. 

## Results from R-KNN-hyper-opti
The goal is to optimize the hyperparameters for the KNN algorithms. In the case of KNN the only hyperparameter is K.
#### automatic hyperparameter tuning results
k-Nearest Neighbors 

500 samples
784 predictors
 10 classes: '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' 

No pre-processing
Resampling: Bootstrapped (25 reps) 
Summary of sample sizes: 500, 500, 500, 500, 500, 500, ... 
Resampling results across tuning parameters:

  k  Accuracy   Kappa    
  5  0.8057874  0.7826176
  7  0.8085512  0.7857089
  9  0.8007692  0.7768696

Accuracy was used to select the optimal model using the largest value.
The final value used for the model was k = 7.
