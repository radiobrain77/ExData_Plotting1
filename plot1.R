# create plot 1

draw_plot1 <- function() {
  hist(dataset[,"Global_active_power"],
       col="Red",
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)")
}

plot1 <- function() {
  png(filename="plot1.png",width=480,height=480)

  draw_plot1()

  dev.off()
}
