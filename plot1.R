# create plot 1

load_data <- function() {
  filename <- "../data/household_power_consumption.txt"
  data <- read.table(filename,sep=";",header=TRUE,na.string="?")
  tmp <- transform(data,Date=as.Date(Date,"%d/%m/%Y"))
  dataset <- tmp[tmp$Date>=as.Date("01/02/2007","%d/%m/%Y") 
                 & tmp$Date<=as.Date("02/02/2007","%d/%m/%Y"),]
}

draw_plot1 <- function() {
  hist(dataset[,"Global_active_power"],
       col="Red",
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)")
}

plot1 <- function() {
  load_data()
  png(filename="plot1.png",width=480,height=480)
  draw_plot1()
  dev.off()
}

plot1()
