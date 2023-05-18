#ENTRENAMIENTO DE MODELO
#Usamos Random Forest
library(randomForest)
modelo <- randomForest(clase ~ ., data = datos_entrenamiento)


#EVALUACION DE MODELO

# Predecir las clases en el conjunto de prueba
predicciones <- predict(modelo, newdata = datos_prueba)

# Calcular la matriz de confusión y las métricas de evaluación
matriz_confusion <- confusionMatrix(predicciones, datos_prueba$clase)
precision <- matriz_confusion$overall["Accuracy"]
recuerdo <- matriz_confusion$byClass["Sensitivity"]
puntuacion_f1 <- matriz_confusion$byClass["F1"]
area_roc <- matriz_confusion$byClass["Area under ROC"]

