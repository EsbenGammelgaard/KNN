# Digit recongnition using KNN in RStudio, Python & SAS

## Database
The database used in all three examples is the MNIST database of handwritten digits. The database is created by: Yann LeCun, Courant Institute, NYU, Corinna Cortes, Google Labs, New York, and Christopher J.C. Burges, Microsoft Research, Redmond. The database is found at http://yann.lecun.com/exdb/mnist/.

### CSV version
In these examples the more conviniet .CSV file created by Joseph Redmon is used. It can be downloadet from: https://pjreddie.com/media/files/mnist_train.csv.

## RStudio
See R file for the full code including comments.

### RStudio Results
Below two tables are included. The first table shows the accuracies achieved on the test data with a 50/50 split between test and training. The second tables shows the required computational time for the same computations.
| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|--------------|-------|-------|-------|--------|--------|
| 1000         |  0.82 |  0.80 |  0.77 |   0.76 |   0.73 |
| 2000         |  0.88 |  0.86 |  0.86 |   0.85 |   0.82 |
| 3000         |  0.90 |  0.91 |  0.90 |   0.88 |   0.86 |
| 4000         |  0.92 |  0.91 |  0.91 |   0.89 |   0.87 |

Computational time Table missing

#### RStudio Results Conclusions
From the table above the trend seems to be that the larger amount of observations used the higher the accuracy can be achieved. Furthermore it can be seen that for all the included amounts of observations the best accuracy is achieved by using smaller K-values in the 1 to 3 area.

## Python

### Python Results

| Observations | K = 1 | K = 3 | K = 5 | K = 10 | K = 20 |
|-----------|------:|------:|------:|-------:|-------:|
|      1000 |  0.88 |  0.91 |  0.89 |   0.89 |   0.90 |
|      2000 |  0.89 |  0.89 |  0.90 |   0.88 |   0.90 |
|      3000 |  0.89 |  0.89 |  0.88 |   0.90 |   0.87 |
|      4000 |  0.90 |  0.90 |  0.89 |   0.89 |   0.87 |
