# Exploratory Data Analysis
# Author: CM
# Date: 8/9/2014
# Code to generate Plot 3

# Data is read in file plot1.R

# Plot 3
png(filename="plot3.png", width=480, height=480)

x <- df$FTime
y <- df$Sub_metering_1

plot(x, y, type="l", ylab="Energy sub metering", xlab="")

y <- df$Sub_metering_2
lines(x, y, col="red")

y <- df$Sub_metering_3
lines(x, y, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1)
dev.off()
