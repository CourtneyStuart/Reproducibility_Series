#####
#####
# This main file calls and runs all subsequent R files in this analysis
#####
#####
# Author: Courtney Stuart
# Date of Creation: 2021-05-27
#####

# Set-up #######################################################################


# Data wrangling ###############################################################
# This script reads in Iris data and performs some simple data wrangling, then
# writes out files for model fitting

source("./Code/Data_Wrangling.R")

# Model fitting ################################################################
# This script reads in the appropriate CSVs, then fits a simple general linear 
# model, then makes predictions

rm(list = ls())
source("./Code/Model_Fitting.R")

# Visualization ################################################################
# This script reads in two CSV files, then makes simple plots of the data and 
# saves them

rm(list = ls())
source("./Code/Visualization.R")


