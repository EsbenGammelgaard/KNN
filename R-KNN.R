library(class) # Package required for KNN
library(caret) # Package required for confusion matrix

# Importing data
mnist_raw <-
  read.csv(file.path("C:\\Users\\esbe1\\Desktop\\Portfolio", "mnist_train.csv"))

# Required inputs
size <- 2000
split <- 50
k <- 1

# Splitting between train and test data
mnist_train <- mnist_raw[1:(size * split * 0.01), -1]
mnist_test <- mnist_raw[(size * split * 0.01 + 1):size, -1]

# Splitting between train and test labels
mnist_train_labels <- factor(mnist_raw[1:(size * split * 0.01), 1])
mnist_test_labels <-
  factor(mnist_raw[(size * split * 0.01 + 1):size, 1])

# Training the algorithm
mnist_pred <-
  knn(
    train = mnist_train ,
    test = mnist_test ,
    cl = mnist_train_labels,
    k = k
  )

# Confusion Matrix and calculation of overall accuracy
cf_half_ind  <- confusionMatrix(mnist_test_labels , mnist_pred)
cf_half_ind$table
acc_half_ind <-
  sum(diag(cf_half_ind$table)) / sum(cf_half_ind$table)