# create plot 2

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
  png(filename="plot2.png",width=480,height=480)

  draw_plot2()

  dev.off()
}
  
