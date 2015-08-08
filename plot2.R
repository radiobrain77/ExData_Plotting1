# create plot 2

load_data <- function() {
  filename <- "../data/household_power_consumption.txt"
  data <- read.table(filename,sep=";",header=TRUE,na.string="?")
  tmp <- transform(data,Date=as.Date(Date,"%d/%m/%Y"))
  dataset <- tmp[tmp$Date>=as.Date("01/02/2007","%d/%m/%Y") 
                 & tmp$Date<=as.Date("02/02/2007","%d/%m/%Y"),]
}

draw_plot2 <- function() {
  t5 <- transform(dataset,
                  timepoint=paste(dataset[,1],dataset[,2]))
  t5$timepoint <- strptime(t5[,"timepoint"],format="%Y-%m-%d %H:%M:%S")
  plot(t5$timepoint,
       t5$Global_active_power,
       ylab="Global Active Power (kilowatt)",
       xlab="",
       type="l",
       col="black")
}

plot2 <- function() {
  load_data()
  png(filename="plot2.png",width=480,height=480)
  draw_plot2()
  dev.off()
}
  
plot2()
