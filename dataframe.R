# video 08 – dataframes

# Objetivo: estudiar qué son dataframes en R.
# ——————————————–
# En este ejercicio vamos a:
# 1. Crear dataframes en R
# 2. Ordenar dataframes por columnas
# 3. Seleccionar elementos de un dataframe

#####################################
# correr esto antes de empezar…   #
#####################################

# vectores sobre peliculas de Shrek
nombre <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")
puntuacion <- c(7.9, 7.2, 6.1, 6.3)
posterior_2005 <- c(FALSE, FALSE, TRUE, TRUE)

#######################################
# práctica 1: crear un dataframe en R #
#######################################

# crear dataframe de vectores
peliculas_df <- data.frame(nombre,puntuacion,posterior_2005)



# mostrar dataframe
peliculas_df

# cambiar nombre de dataframe
names(peliculas_df) <- c('NOMBRE','PUNTUACION','POSTERIOR_2005')

# mostrar dataframe (sí, otra vez)
peliculas_df

#####################################################
# práctica 2: Seleccionar elementos de un dataframe #
#####################################################

# seleccionar un elemento del dataframe
peliculas_df[3,2]
peliculas_df[c(3,2),c(2,2)]
peliculas_df[c(3,4),c('PUNTUACION','POSTERIOR_2005')]

# seleccionar más de un elemento del dataframe
peliculas_df[3,)]


# seleccionar una fila o renglón del dataframe


# seleccionar una columna del dataframe




#################################
# práctica 3: ordenar dataframe #
#################################

# mostrar el dataframe


# mostrar el indice de la columna de puntuacion con order


# funcion order (menor a mayor)



# mostrar el dataframe ordenado


# funcion order (mayor a menor)



# mostrar el dataframe ordenado


# guardar el dataframe ordenado



# Hecho con gusto por Rafa @GonzalezGouveia
# Para aprender más sobre R 
# Suscribete en YouTube  https://bit.ly/2WNDhNR