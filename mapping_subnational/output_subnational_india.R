# |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# --------------------------------------------------------------
# description: India subnational validation 
# comparison script: FALSE
# ---------------------------------------------------------------

#Version 1.00 - Miodrag Stevanovic
# 1.00: first working version

library(lucode2)
library(magpie4)
library(madrat)
library(mrfable)
library(mip)

print("Start India state level validation output runscript")

############################# BASIC CONFIGURATION #######################################

if(!exists("source_include")) {
  
  outputdir <- "runs/FSEC_wht_ssp2_ndc_2021-12-20_22.36.43/"
  
  ###Define arguments that can be read from command line
  readArgs("outputdir")
}
# hist     <- "runs/validation.mif"
file    <- paste0("india_subnational_validation_",format(Sys.time(), "%Y%H%M%S"),".pdf")
#########################################################################################

print(paste0("script started for output directory: ",outputdir))

# Subnational validation of landuse types 

x <- read.magpie(file.path(outputdir,"avl_land_full_t_0.5.mz"))

# aggregate land from grid to state level

mapping <- toolGetMapping("mapping_subnational/country2cell.rds")
mapping$iso_mag <- paste(mapping$iso,mapping$cell,sep=".")
x_state <- toolAggregate(x=x[,,], rel=mapping, from="iso_mag", to="ind")

# load Indian states
# Need to be generically located
inds <- toolGetMapping("mapping_subnational/india_state_code.csv")

x_state <- x_state[inds$State_code,,]


# get the observed data from mrfable

setConfig(extramappings = "mappingIndiaAPY.csv")
h <- calcOutput("IndiaFoodcrop", subtype = "Area", aggregate = "Zonal.Council")


# create the validation plot
# ... mipLineHistorical(x_states[,,"crop"], hist=...)


