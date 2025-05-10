# working directory
#setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# packages
list_packages = c('readxl', 'dplyr', 'moments', 'tidyr', 'tibble', 'gt', 'ggplot2', 
                  'fmsb', 'car', 'reshape2', 'knitr', 'gridExtra', 'ggExtra', 'sf', 
                  'leaflet', 'igraph', 'ggraph', 'tidygraph', 'spdep', 'classInt', 
                  'corrplot', 'spData', 'Matrix', 'terra', 'tmap', 'geodata')
new.packages = list_packages[!(list_packages %in% installed.packages()[,"Package"])]
if (length(new.packages)) {
  install.packages(new.packages)
}
for (package in list_packages){
  library(package, character.only = T)
}