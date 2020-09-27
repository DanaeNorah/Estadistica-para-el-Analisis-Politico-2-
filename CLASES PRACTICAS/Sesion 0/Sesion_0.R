# Estadística para el análisis político 2
# Sesión N° 0
# Christian Chiroque Ruiz

# Recordemos la regresión lineal simple

# Abrimos nuestro archivo

library(rio)
link_del_github="https://github.com/DataPolitica/salidas/raw/master/Data/trabajadores.sav"
trabajadores=import(link_del_github)

# Vemos los archivos dentro de la base de datos
names(trabajadores)

# Gráfito de dispersión
plot(trabajadores$salario_actual, trabajadores$salario_inicial)

#Histograma 1
hist(trabajadores$salario_actual)

#Histograma 2
hist(trabajadores$salario_inicial)

# Gráfito de dispersión
plot(trabajadores$salario_actual, trabajadores$salario_inicial)

# Modelo de regresión
modelo1=lm(salario_actual~salario_inicial,data=trabajadores)
summary(modelo1)


