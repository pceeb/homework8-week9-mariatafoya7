#!/usr/bin/env Rscript

#install.packages in R
#install.packages('openssl')
#install.packages('rgeos')
#install.packages('rgbif')

#Load Packages
library(openssl)
library(rgeos)
library(rgbif)

input = read.csv("thing.txt", header = F)
col <- input[[1]]

for (i in col){
	print(occ_search(scientificName = as.character(i)))

}

#install.packages('raster')
library(raster)

input1 = read.csv("thing.txt", header = F)
col1 <- input1[[1]]

for (X in col1){
	print(X)
	name = ""
	key <- name_backbone(name = as.character(X))$speciesKey
	M <- map_fetch(taxonKey = key)
	name = paste("SpeciesPlot",X,".jpg")
	plot(M)
	jpeg(name)
	plot(M)
	dev.off()        
}
