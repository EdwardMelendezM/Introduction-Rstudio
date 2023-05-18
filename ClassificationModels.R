#MODELOS DE CLASIFICACION

#Regresion logistica
modelo <- glm(clase ~ ., data = datos_entrenamiento, family = binomial)

# Maquina de vectores (SVM)
library(e1071)
modelo <- svm(clase ~ ., data = datos_entrenamiento)

# Arboles de decision
library(rpart)
modelo <- rpart(clase ~ ., data = datos_entrenamiento)

# Random Forest
library(randomForest)
modelo <- randomForest(clase ~ ., data = datos_entrenamiento)

# Gradient Boosting
library(xgboost)
datos_matriz <- as.matrix(datos_entrenamiento[, -ncol(datos_entrenamiento)])
datos_dmatrix <- xgb.DMatrix(data = datos_matriz, label = datos_entrenamiento$clase)
parametros <- list(objective = "binary:logistic", eval_metric = "logloss")
modelo <- xgb.train(params = parametros, data = datos_dmatrix, nrounds = 100)