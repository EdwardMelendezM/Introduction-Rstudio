#Evaluacion de cada modelo


# REGRESION LOGISTICA

# Predecir las clases en el conjunto de prueba
predicciones <- predict(modelo, newdata = datos_prueba, type = "response")

# Convertir las predicciones en clases binarias (0 o 1) usando un umbral de decisión
umbral <- 0.5
predicciones_binarias <- ifelse(predicciones >= umbral, 1, 0)

# Calcular la matriz de confusión y las métricas de evaluación
matriz_confusion <- confusionMatrix(predicciones_binarias, datos_prueba$clase)
precision <- matriz_confusion$overall["Accuracy"]
recuerdo <- matriz_confusion$byClass["Sensitivity"]
puntuacion_f1 <- matriz_confusion$byClass["F1"]
area_roc <- matriz_confusion$byClass["Area under ROC"]



# MAQUINA DE VECTORES (SVM)


# Predecir las clases en el conjunto de prueba
predicciones <- predict(modelo, newdata = datos_prueba)

# Calcular la matriz de confusión y las métricas de evaluación
matriz_confusion <- confusionMatrix(predicciones, datos_prueba$clase)
precision <- matriz_confusion$overall["Accuracy"]
recuerdo <- matriz_confusion$byClass["Sensitivity"]
puntuacion_f1 <- matriz_confusion$byClass["F1"]
area_roc <- matriz_confusion$byClass["Area under ROC"]



# ARBOLES DE DECISION

# Predecir las clases en el conjunto de prueba
predicciones <- predict(modelo, newdata = datos_prueba, type = "class")

# Calcular la matriz de confusión y las métricas de evaluación
matriz_confusion <- confusionMatrix(predicciones, datos_prueba$clase)
precision <- matriz_confusion$overall["Accuracy"]
recuerdo <- matriz_confusion$byClass["Sensitivity"]
puntuacion_f1 <- matriz_confusion$byClass["F1"]
area_roc <- matriz_confusion$byClass["Area under ROC"]



# RANDOM FOREST


# Predecir las clases en el conjunto de prueba
predicciones <- predict(modelo, newdata = datos_prueba, type = "class")

# Calcular la matriz de confusión y las métricas de evaluación
matriz_confusion <- confusionMatrix(predicciones, datos_prueba$clase)
precision <- matriz_confusion$overall["Accuracy"]
recuerdo <- matriz_confusion$byClass["Sensitivity"]
puntuacion_f1 <- matriz_confusion$byClass["F1"]
area_roc <- matriz_confusion$byClass["Area under ROC"]


#GRADIENT BOOSTING

# Preparar los datos de prueba en una matriz DMatrix
datos_prueba_matriz <- as.matrix(datos_prueba[, -ncol(datos_prueba)])
datos_prueba_dmatrix <- xgb.DMatrix(data = datos_prueba_matriz)

# Predecir las clases en el conjunto de prueba
predicciones <- predict(modelo, newdata = datos_prueba_dmatrix)

# Convertir las predicciones en clases binarias (0 o 1) usando un umbral de decisión
umbral <- 0.5
predicciones_binarias <- ifelse(predicciones >= umbral, 1, 0)

# Calcular la matriz de confusión y las métricas de evaluación
matriz_confusion <- confusionMatrix(predicciones_binarias, datos_prueba$clase)
precision <- matriz_confusion$overall["Accuracy"]
recuerdo <- matriz_confusion$byClass["Sensitivity"]
puntuacion_f1 <- matriz_confusion$byClass["F1"]
area_roc <- matriz_confusion$byClass["Area under ROC"]
