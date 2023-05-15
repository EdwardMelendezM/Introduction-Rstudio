a<- c(1,2,3,4,5,5)

puntuacionExamen <- c(15,18,19,20,11,12,18,16,11)

nombreAlumnos <- c("Juan","Pedro","Alber",'Calamardo')

tamañoVector<-length(nombreAlumnos)

elementoJuan <- nombreAlumnos[2]

elementoJuanAlber <- nombreAlumnos[c(1,3)]

puntuacionBaja <- puntuacionExamen <14


mostrarPuntuacionBajas <- puntuacionExamen[puntuacionBaja]
mostrarPuntuacionBajas


