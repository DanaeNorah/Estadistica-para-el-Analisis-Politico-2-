
#REGRESION LOGISTICA: medimos el fracaso o exito /usamos las probabilidades 


#Preparamos la data

library(rio)
data<-import("voto.sav")

plot(data$ingresos, data$voto)
plot(data$ingresos, data$sexo)


data$voto<-as.factor(data$voto)
levels(data$voto) <- c("No Votó", "Votó")

data$sexo<-as.factor(data$sexo)
levels(data$sexo) <- c("Hombre", "Mujer")

set.seed(2019)
summary(data)
str(data)


# Vemos la relación entre las variables
t<-table(data$voto, data$sexo)
prop.table(t,2)
mosaicplot( t, col = c("orange", "green"))



# Cálculo de modelo de regresión logística binaria

logistica1=glm(data$voto~data$sexo, data=data,family = binomial)
summary(logistica1)

library(stargazer)
stargazer(logistica1,type="text")

#ODDS ratio
exp(cbind(OR = coef(logistica1), confint(logistica1)))


#Evaluacion del modelo

install.packages("InformationValue")
library(InformationValue)
confusionMatrix(sbase3$democracia,predicted)

#La antidiagonal debería ser 0
#qué tanto acertamos a predecir el evento

#CONCLUSIÓN

#La hipótesis es correcta, SEXO sí ayuda a predecir si una persona votó o no.
#Al modelo le va mejor probando la ocurrencia que la no ocurrencia.


# Generar un segundo modelo y compararlo con el primero
logistica2=glm(data$voto~data$sexo + data$edad, data=data,family = binomial)
summary(logistica2)

library(stargazer)
stargazer(logistica1, logistica2, type="text")
exp(cbind(OR = coef(logistica2), confint(logistica2)))
#Cuál es el mejor modelo?
