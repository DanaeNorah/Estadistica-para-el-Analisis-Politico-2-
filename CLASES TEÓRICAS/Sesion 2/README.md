# Estadistica-para-el-Analisis-Politico-2-

# instalar:
library(sp)
library(geojsonio)
library(rgdal)

fromGit="XXXXX" # link desde github

wazipMap <- rgdal::readOGR(fromGit,stringsAsFactors = FALSE)
plot(wazipMap)
