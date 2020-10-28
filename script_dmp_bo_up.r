library(ggplot2)
library(GGally)
library(rgdal)
library(gdalUtils) #to transform the file format
library(raster)
library(RStoolbox)
library(ncdf4)
#install.packages("sf")
library(sf) # to call st_* functions; to encode spatial vector data

setwd ("D:/toy/")

# import raster images of dmp and ndvi sentinel2
dmptiff <- raster("c_gls_DMP300-RT5_QL_201712200000_GLOBE_PROBAV_V1.0.1(1).tiff")
ndvitiff <- ("c_gls_NDVI300_QL_201712210000_GLOBE_PROBAV_V1.0.1.tiff")
ndvinc <- raster ("c_gls_NDVI300_201712210000_GLOBE_PROBAV_V1.0.1.nc")
dmpnc <- raster ("c_gls_DMP300-RT5_201712310000_GLOBE_PROBAV_V1.0.1.nc")

par(mfrow=c(2,2))
plot(dmptiff)
plot(ndvitiff)
plot(dmpnc)
plot(ndvinc)

# crop my AOI
extup <- c(75.10, 75.60, 12.05, 12.55)
dmptiff.up <- crop(dmptiff, ext)
dmpnc.up <- crop(dmpnc, ext)
# ndvitiff.up <- crop(ndvitiff, ext)
# ndvinc.up <- crop(ndvinc, ext)
extbo <- c(11.00, 11.50, 44.00, 44.50)
dmptiff.bo <- crop(dmptiff, extbo)
dmpnc.bo <- crop(dmpnc, extbo)
par(mfrow=c(2,2))
plot(dmptiff.up)
plot(dmpnc.up)
plot(dmptiff.bo)
plot(dmpnc.bo)

par(mfrow=c(1,2))
 plot(dmpnc.up, main= "Uppangala-India, Dry Biomass Productivity, December 17")
 plot(dmpnc.bo, main= "Bologna-Italy, Dry Biomass Productivity, December 17")
 
par(mfrow= c(2,1))
hist(dmpnc.up, main= "Dry Matter Productivity = kg/ha/day")
hist(dmpnc.bo, main= "Dry Matter Productivity = kg/ha/day")

