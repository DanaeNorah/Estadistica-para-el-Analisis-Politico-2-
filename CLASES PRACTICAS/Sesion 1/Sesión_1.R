#SESION 1
x=1
x

#funcion
#class puede ser caracter, numerico o logico
class(x)
y="pablo"
y
class(y)

#Z_ xoncatenacion de otros objetos, pero de la misma clase
z=c(7,10,15)

##CREEMOS UN OBJETO PROPIO
nombre=c("Juan", "Pedro", "Pablo")
nombre
class(nombre)


#Un vector numérico
edad= c(18, 19, 25)
edad
class(edad)

#Un vector lógico:
examen = c (TRUE, FALSE, TRUE)
examen
examen[2]
class(examen)

musica = c ("rock", "salsa", "rap")
musica

#cuando los objetos no son de la misma clase y no estan concatenados
##es una lista

#c() es concatenacion, un agrupamiento

#data frame: conjunto de vectores
base=data.frame(nombre, edad, examen, musica, stringsAsFactors = F)
base
#MATRIZ: cuando tenemos vectores de un mismo tipo
#DATA.FRAME: cuando tenemos vectores de distinto tipo
class(base)
str(base)
#str: te dice el tipo de objeto, numero de vairbales y el detalle de cada variable


#ABRIR 
library(rio)
lapop= import("sub_lapop.sav")



#EJERCICIO DE GIT HUB 1

#creo el objeto Enlace1 que es nuestro enlace
Enlace1= "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports_us/09-10-2020.csv"

#abrimos nuestra libreria rio que es para importar
library(rio)

#importamos la base de datos y le asignamos el nombre datacovid
#para rio hay import, convert, export
datacovid= import(Enlace1)

#para calcular las columnas de data.frame se puede usar str
str(datacovid)

#para saber cuantas filas tiene
nrow(datacovid)

#para saber cuantas columnas tiene
ncol(datacovid)

#En este caso la "datacovid" tiene 58 observaciones (filas) y 18 variables (columnas)

##EJERCICIO 2: de Scrapeo o web scraping

#Ubicamos nuestra pagina web
#generamos objeto Enlace2 que sera el link de la web
Enlace2= "https://en.wikipedia.org/wiki/World_Happiness_Report"

#Creamos un objeto que sea el xpath de la tabla, es decir, la ubicacion de la tabla dentro de la pagina web que nos interesa
xpath1= '//*[@id="mw-content-text"]/div[1]/table'

#Abrimos el paquete "htmlab" (para extraer la info de la tabla en web scraping)
library(htmltab)

#Utilizamos la función "htmltab" en la cual indicamos el enlace donde esta la tabla, y la ubicacion dentro de la pagina web 
datawiki= htmltab(doc = Enlace2, which =xpath1)

#para saber columnas y filas utilizo el "str"
str(datawiki)
#nuestra data.frame o datawiki tiene 156 observaciones y 9 variables