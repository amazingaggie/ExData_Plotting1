# Exploratory Data Analysis
# Author: CM
# Date: 8/9/2014
# Code to generate Plot 4

# Data is read in file plot1.R

png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2,2))

# Plot 4.1
plot(x=df$FTime, y=df$Global_active_power, type="l", xlab="", ylab="Global Active Power")

# Plot 4.2
plot(x=df$FTime, y=df$Voltage, type="l", xlab="datetime", ylab="Voltage")

# Plot 4.3
x <- df$FTime
y <- df$Sub_metering_1

plot(x, y, type="l", ylab="Energy sub metering", xlab="")

y <- df$Sub_metering_2
lines(x, y, col="red")

y <- df$Sub_metering_3
lines(x, y, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1, bty="n")

# Plot 4.4
plot(x=df$FTime,y=df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_active_power")
dev.off()