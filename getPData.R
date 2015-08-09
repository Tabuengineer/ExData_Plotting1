
# Set working directory
setwd("C:/DataScience/ExploratoryDataAnalysis/project")
getwd()

# read the dataset and subset only for dates 2007-02-01 and 2007-02-02

getPlotData <- function(){
  
  pdata <- read.csv("data//household_power_consumption.txt" , sep=";" , na.strings = "?")
  pdata$Date <- as.Date(pdata$Date, "%d/%m/%Y")
  pdata$Datetime <- as.POSIXct(paste(pdata$Date, pdata$Time), format="%Y-%m-%d %H:%M:%S")
  pdata <- subset.data.frame(pdata, Date >= "2007-02-01" & Date <= "2007-02-02")
  
 
  
}