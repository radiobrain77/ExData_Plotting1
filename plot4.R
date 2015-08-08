# create plot 2

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
  draw_plot3()
  draw_plot4a()
  draw_plot4b()
  
}

plot4 <- function() {
  png(filename="plot4.png",width=480,height=480)
  
  draw_plot4()
  
  dev.off()  
}

