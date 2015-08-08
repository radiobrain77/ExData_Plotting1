library(datasets)


fileName <- "./data/household_power_consumption.txt"
subset_fileName <- "./data/household_power_consumption_subset.txt"

data <- read.table(fileName,sep=";",header=TRUE,na.string="?")
d2 <- as.data.frame(data)

tmp <- transform(data,Date=as.Date(Date,"%d/%m/%Y"))

dataset <- tmp[tmp$Date>=as.Date("01/02/2007","%d/%m/%Y") 
            & tmp$Date<=as.Date("02/02/2007","%d/%m/%Y"),]

setwd("ExData_Plotting1")

source("plot1.R")
