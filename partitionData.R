#PARTICION DE DATOS

#Aqui usamos la libreria cared para separar, ademas creamos una semilla
library(caret)
set.seed(123)  # Establece una semilla para la reproducibilidad
indice <- createDataPartition(datos$clase, p = 0.7, list = FALSE)

#Separar los datos de entrenamiento y de prueba
datos_entrenamiento <- datos[indice, ]
datos_prueba <- datos[-indice, ]