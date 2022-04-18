# India subnational mapping 

library(magclass)
library(madrat)

setwd("./mapping_subnational/")

x <- toolGetMapping("New Complete India Cell Map.csv")

# load the current cellular mapping to iso 
y <- toolGetMapping("~/magpie_wd/scripts/npi_ndc/policies/country2cell.rds")

# add the indian map 
y$ind <- x$ind

saveRDS(y, "country2cell.rds")
