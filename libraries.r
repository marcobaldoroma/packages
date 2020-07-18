install.packages(c("sp", "GGally", "raster", "rgdal", "ggplot2", "devtools", "vegan", "spatstat", "RStoolbox", "rasterdiv", "rasterVis",  "sf", "ncdf4", "sdm" ))

# to download MODIS images directly on R 
install.packages("MODIStsp") # MODIS dataset
install.packages("gWidgetsRGtk2") #necessary for GTK+ library 

library(devtools)
install_github("ropensci/MODIStsp") # aggiornamento  dai un occhiata sul cran e google
library(gWidgetsRGtk2)

library(MODISTools) #install.packages("MODISTools")

# libraries
library(sp)
library(GGally)
library(raster)
library(rgdal)    ##library(gdalUtils) to traslate file format
library(ggplot2)
library(devtools)
library(vegan)
library(spatstat)
library(RStoolbox)
library(rasterdiv)
library(rasterVis)
library(ncdf4)                                                        # required to read our data format ".nc"

library (sf)  
library (sdm) 
