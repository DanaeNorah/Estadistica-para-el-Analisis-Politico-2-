
###PRACTICA CALIFICADA 1 - DANAE BALLENA 

##EJERCICIO 1: CARGA DE DATOS

#PASO 1: A partir del enlace que se nos brinda, creo el objeto "Enlace1"
Enlace1= "https://github.com/schrodingercase/practicaest2/raw/master/Base1.xlsx"

#PASO 2: Abrimos la libreria "rio" que nos permite importar
library(rio)

#PASO 3: importamos la base de datos y le asignamos el nombre "data1"
data1= import(Enlace1)

#RESPONDER LA PREGUNTA
#PASO 4: para calcular cuántas variables y observaciones tiene la data extraída usamos la función "str"
str(data1)
#RESPUESTA: En este caso la "data1" tiene 195 observaciones y 6 variables

##EJERCICIO 2: SCRAPPING

#PASO 1: Ubicamos nuestra pagina web y generamos el objeto "Enlace2" que es el enlace de la web
Enlace2= "https://en.wikipedia.org/wiki/Index_of_Economic_Freedom"

#PASO 2: Creamos un objeto llamado "xpath1" que sea el xpath de la tabla, es decir,la ubicación de la tabla dentro de la pagina web que nos interesa
xpath1= '//*[@id="mw-content-text"]/div[1]/table[4]'

#PASO 3: Abrimos el paquete "htmlab" (para extraer la información de la tabla)
library(htmltab)

#PASO 4: Creamos el objeto "data2", y utilizamos la función "htmltab" en la cual indicamos el enlace dónde está la tabla, y la ubicación dentro de la pagina web 
data2= htmltab(doc = Enlace2, which =xpath1)

#RESPONDER PREGUNTA
#PASO 5: para calcular cuántas variables y observaciones tiene la data extraída usamos la función "str"
str(data2)
#RESPUESTA: nuestra data2 tiene 39 observaciones y 15 variables
