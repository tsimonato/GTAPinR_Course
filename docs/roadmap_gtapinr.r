## 3. Setting Up

##  Installing 'TabloToR' package

if (!require("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
if (!requireNamespace("tabloToR", quietly = TRUE)) {
  devtools::install_github('tsimonato/MTED-TabloToR', force = TRUE)
}

install.packages('devtools')
devtools::install_github('https://github.com/USDA-ERS/MTED-HARr.git')
require(HARr)

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()

df <- data.frame(
  Commodities = c("Wheat", "Corn", "Wheat", "Corn"),
  Activities = c("Farming", "Farming", "Harvesting", "Harvesting"),
  Margins = c("Low", "High", "Low", "High"),
  Values = c(1, 2, 3, 4)
)
df

# Assuming each combination of categories has a unique value
array_data <- array(df$Values, dim = c(2, 2, 2))
dimnames(array_data) <- list(
  unique(df$Commodities),
  unique(df$Activities),
  unique(df$Margins)
)
array_data


list_data <- list(
  Data_Frame = df,
  Array = array_data,
  Details = list(
    Commodities = unique(df$Commodities),
    Activities = unique(df$Activities),
    Margins = unique(df$Margins)
  )
)
list_data

list_data$Data_Frame

list_data$Data_Frame$Commodities

list_data$Array["Wheat", "Farming", "Low"]

# You need to get the data files .har
database = list(
  gtapsets = HARr::read_har('model\\SETS.HAR'),
  gtapdata = HARr::read_har('model\\Basedata.har'),
  gtapparm = HARr::read_har('model\\Default.prm')
)

vifm = database$gtapdata$vifm

vifm.array = apply(vifm,3,c) 

View(vifm.array)
