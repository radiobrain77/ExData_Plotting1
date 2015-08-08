# create plot 2

png(filename="plot2.png",width=480,height=480)

plot(dataset$Time,dataset$Global_active_power)

dev.off()
