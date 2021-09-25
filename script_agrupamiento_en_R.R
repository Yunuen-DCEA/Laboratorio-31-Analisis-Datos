####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Yunuén Hernández Álvarez (UAEH)


# LABORATORIO - Agrupamiento en R

# Objetivo: Sumar una variable agrupándola dentro de R
#----------------------------------------------------------------------------



#Cargar paquetes
library(data.table)
library(dplyr)


#Cargar base de datos
choose.files()


#Crear objeto
data2013 <- read.csv("C:\\Users\\yunh_\\Desktop\\DOCTORADO\\4to. SEMESTRE\\ANÁLISIS DE DATOS\\Tareas\\Laboratorios\\Lab 31 - Agrupamiento en R\\greenR_2013.csv")


#Transformar el objeto a una tabla de datos
data2013 <- as.data.table(data2013)


#Ver la clase de datos
class(data2013)


#Crear data frame
resultados2013 <- data2013 %>% 
  group_by(location_name) %>% 
  summarise(suma_GCI_2013 = sum(GCI_2013, na.rm = T),
            suma_GP_SINVCR = sum(GP_SINVCR, na.rm = T),
            suma_GCP_2013 = sum(GCP_2013, na.rm = T),
            count = n())
