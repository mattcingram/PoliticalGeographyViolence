##############################
# Replication code for Article: Political Geography of Violence
# Authors: Matthew Ingram and Marcelo Marchesini da Costa  
# University at Albany, SUNY, and Insper, Sao Paulo
# contact: mingram@albany.edu
# Last updated: 20190321
# Key steps here: setup
##############################

###########################################################
# Environment and Session Information
###########################################################

############################
# install necessary packages
############################

#install.packages("pacman")
library(pacman)
pacman::p_load(graphicsQC, prettyR, RColorBrewer, car, grid, gridExtra, 
               classInt, 
               rgeos, 
               rgdal, 
               maptools, RgoogleMaps,
               lattice, latticeExtra,
               tidyverse, broom,
               weights, xts, spdep, spam,
               #sf, 
               parallel,
               spdep, spgwr, GWmodel, spacetime, maps, plm, plyr, 
               parallel, scales, cowplot, AER, 
               psych, 
               reticulate, 
               stargazer, knitr,
               PerformanceAnalytics,
               tictoc)

# note: if used install.packages() command rather than pacman, installing is not enough; need to open library with library() command

# check what packages are installed/loaded
#library()     # tells you what packages are installed on your computer
sessionInfo() # tells you what packages have been loaded for current session
##########

# set other options
options(digits=3)

#################################
# SET WORKING DIRECTORY
#################################

# note: this is set to my own working directory; select your own
# if don't know working directory, use getwd()
#getwd()

# if using remote cluster (HPC)
#path <- '/network/rit/lab/ingramlab/wd2019/replicationmaterials'

# if using network drive
path <- 'A:/wd2019/replicationmaterials'

# if using C drive
#path <- 'C:/Users/mi122167/Dropbox/HomicideResearch/BRA-PolGeoHom/submissionWD2018/Revision1_201901/replicationmaterials'
setwd(path)

# create subdirectories
dir.create('./code', showWarnings = TRUE)
dir.create('./data', showWarnings = TRUE)
dir.create('./data/original', showWarnings = TRUE)
dir.create('./data/working', showWarnings = TRUE)
dir.create('./figures', showWarnings = TRUE)
dir.create('./tables', showWarnings = TRUE)
dir.create('./shapefiles', showWarnings = TRUE)

#end