library("caret")

# Importing data
if (exists("mnist_raw") == FALSE) {
  mnist_raw <-
    read.csv(file.path("C:\\Users\\esbe1\\Desktop\\Portfolio", "mnist_train.csv"))
}

size <- 1000
split <- 50

# Splitting between train and test data
mnist_train <- mnist_raw[1:(size * split * 0.01), -1]
mnist_test <- mnist_raw[(size * split * 0.01 + 1):size, -1]

# Splitting between train and test labels
mnist_train_labels <-
  factor(mnist_raw[1:(size * split * 0.01), 1])
mnist_test_labels <-
  factor(mnist_raw[(size * split * 0.01 + 1):size, 1])

# Training KNN algorithm with carets automatic hyperparameter tuning
knnfit0 <- train(mnist_train, mnist_train_labels, method = "knn")

# Evaluating performance
cf_train0 <- table(mnist_train_labels, predict(knnfit0))
acc_train0 <- sum(diag(cf_train0)) / sum(cf_train0)

cf_test0 <- table(mnist_test_labels, predict(knnfit0, mnist_test))
acc_test0 <- sum(diag(cf_test0)) / sum(cf_test0)

# Training KNN algorithm with manual hyperparameter grid tuning
hyperparams <- expand.grid(k = seq(1, 7, 2))
knnfit1 <-
  train(mnist_train,
        mnist_train_labels,
        method = "knn",
        tuneGrid = hyperparams)

# Evaluating performance
cf_train1 <- table(mnist_train_labels, predict(knnfit1))
acc_train1 <- sum(diag(cf_train1)) / sum(cf_train1)

cf_test1 <- table(mnist_test_labels, predict(knnfit1, mnist_test))
acc_test1 <- sum(diag(cf_test1)) / sum(cf_test1)

knnfit1