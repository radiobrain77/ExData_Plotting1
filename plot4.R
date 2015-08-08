# create plot 2

draw_plot3a <- function() {
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
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         bty="n")
}
draw_plot4a <- function() {
  t5 <- transform(dataset,
                  timepoint=paste(dataset[,1],dataset[,2]))
  t5$timepoint <- strptime(t5[,"timepoint"],format="%Y-%m-%d %H:%M:%S")
  plot(t5$timepoint,
       t5$Voltage,
       ylab="Voltage",
       xlab="datetime",
       type="l",
       col="black")
}

draw_plot4b <- function() {
  t5 <- transform(dataset,
                  timepoint=paste(dataset[,1],dataset[,2]))
  t5$timepoint <- strptime(t5[,"timepoint"],format="%Y-%m-%d %H:%M:%S")
  plot(t5$timepoint,
       t5$Global_reactive_power,
       ylab="Global_reactive_power",
       xlab="datetime",
       type="l",
       col="black")
}

draw_plot4 <- function() {
  par(mfcol=c(2,2))
  
  draw_plot2()
  draw_plot3a()
  draw_plot4a()
  draw_plot4b()
  
}

plot4 <- function() {
  png(filename="plot4.png",width=480,height=480)
  
  draw_plot4()
  
  dev.off()  
}

