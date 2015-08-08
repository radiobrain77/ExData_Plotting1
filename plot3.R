# create plot 2

load_data <- function() {
  filename <- "../data/household_power_consumption.txt"
  data <- read.table(filename,sep=";",header=TRUE,na.string="?")
  tmp <- transform(data,Date=as.Date(Date,"%d/%m/%Y"))
  dataset <- tmp[tmp$Date>=as.Date("01/02/2007","%d/%m/%Y") 
                 & tmp$Date<=as.Date("02/02/2007","%d/%m/%Y"),]
}

draw_plot3 <- function() {
  t5 <- transform(dataset,
                  timepoint=paste(dataset[,1],dataset[,2]))
  t5$timepoint <- strptime(t5[,"timepoint"],format="%Y-%m-%d %H:%M:%S")
  plot(t5$timepoint,
       t5$Sub_metering_1,
       ylab="Energy sub metering",
       xlab="",
       type="l",
       col="black")
  
  lines(t5$timepoint,
        t5$Sub_metering_2,
        col="red")
  
  lines(t5$timepoint,
        t5$Sub_metering_3,
        col="blue")
  
  legend("topright",
         lty="solid",
         col=c("black","red","blue"),
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
}

plot3 <- function() {
  load_data()
  png(filename="plot3.png",width=480,height=480)
  draw_plot3()
  dev.off()
}

plot3()