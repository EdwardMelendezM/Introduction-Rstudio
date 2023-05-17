#PREPROCESAMIENTO DE DATOS

#1. IMPORTACION DE DATOS
#Ejemplo para importar un archivo CSV
data <- read.csv("ruta_del_archivo.csv")

#2. EXPLORAR DATOS
# Ejemplo para mostrar las primeras filas de los datos
head(data)

# Ejemplo para obtener un resumen estadístico de los datos
summary(data)

# Ejemplo para mostrar la estructura de los datos
str(data)

# Ejemplo para obtener el número de filas y columnas de los datos
dim(data)

# Ejemplo para obtener los nombres de las columnas
names(data)


#3. LIMPIEZA DE DATOS
# Ejemplo para eliminar filas con datos faltantes
data_clean <- data[complete.cases(data), ]

# Ejemplo para eliminar datos duplicados
data_clean <- subset(data, !duplicated(data))

# Ejemplo para reemplazar valores faltantes con ceros
data_clean <- replace(data, is.na(data), 0)

# Ejemplo de normalización min-max
data_normalized <- scale(data,
                         center = FALSE,
                         scale = apply(data, 2, max) - apply(data,
                                                             2,
                                                             min))
# Ejemplo de codificación one-hot
library(caret)
data_encoded <- predict(dummyVars(~., data = data), newdata = data)


# Ejemplo de codificación ordinal
data$variable_categorica <- factor(data$variable_categorica,
                                   ordered = TRUE,
                                   levels = c("bajo", "medio", "alto"))
data$variable_categorica <- as.numeric(data$variable_categorica)



