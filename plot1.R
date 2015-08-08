# create plot 1

png(filename="plot1.png",width=480,height=480)

hist(dataset[,"Global_active_power"],
     col="Red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()
