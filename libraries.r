install.packages(c("sp", "GGally", "raster", "rgdal", "ggplot2", "devtools", "vegan", "spatstat", "RStoolbox", "rasterdiv", "rasterVis",  "sf", "ncdf4", "sdm" ))

# to download MODIS images directly on R 
install.packages("MODIStsp") # MODIS dataset
install.packages("gWidgetsRGtk2") #necessary for GTK+ library 
install.packages("MODIStools")
install.packages("devtools")
library(devtools)
install_github("ropensci/MODIStsp") # aggiornamento  dai un occhiata sul cran e google
library(gWidgetsRGtk2)
library(MODISTools) #install.packages("MODISTools")
library(MODIStsp)

# packages for thesis 04/2021
install.packages("scico") # per la palette scientifica
install.packages("gdalUtils") # per il crop degli shapefile
install.packages("gdalUtilitis")
install.packages("sen2r") # per sentinel 2
install.packages ("knitr")
install.packages ("tidyverse")

library(sen2r)
library(scico)
library(gdalUtils)
library(gdalUtilitis)
library(knitr)
library(tidyverse)

# libraries prime 04/2020
install.packages("sp")
install.packages("GGally")
install.packages("raster")
install.packages("rgdal")
install.packages("ggplot2")
install.packages("devtools")
install.packages("vegan")
install.packages("spatstat")
install.packages("RStoolbox")
install.packages("rasterdiv")
install.packages("rasterVis")
install.packages("ncdf4")
install.packages("sf")
install.packages("sdm")
install.packages("BIOMASS")
install.packages("remotes")
remotes::install_github('umr-amap/BIOMASS')
install.packages("gridExtra") # pacchetto usato insieme a ggplot2



library(sp)
library(GGally)
library(raster)
library(rgdal)    ##library(gdalUtils) to traslate file format
library(ggplot2)
library(gridExtra)
library(devtools)
library(vegan)
library(spatstat)
library(RStoolbox)
library(rasterdiv)
library(rasterVis)
library(ncdf4)                                                        # required to read our data format ".nc"
library (sf)  
library (sdm) 
library(remotes)
library(BIOMASS)

