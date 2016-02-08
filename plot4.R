w <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
sub3 <- w[as.Date(w$Date, format = "%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(w$Date, format = "%d/%m/%Y") <= as.Date("2007-02-02"),]
par(mfrow = c(2,2))
k <- as.numeric(levels(sub3$Global_active_power))[sub3$Global_active_power]
v <- as.numeric(levels(sub3$Voltage))[sub3$Voltage]
plot.ts(k,xlab = "", ylab = "Global Active Power (kilowatts)", main = "")
plot.ts(v, xlab = "datetime", ylab = "Voltage")
l <- as.numeric(levels(sub3$Sub_metering_2))[sub3$Sub_metering_2]
m <- sub3$Sub_metering_3
plot.ts(k,xlab = "", ylab = "Energy sub metering", main = "")
lines(l, col = "red")
lines(m, col = "blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), col = c("black", "red", "blue"))
g <- as.numeric(levels(sub3$Global_reactive_power))[sub3$Global_reactive_power]
plot.ts(g, ylab = "Global_reactive_power", xlab = "datetime")
dev.copy(png, "plot4.png", width = 480, height = 480)
dev.off()