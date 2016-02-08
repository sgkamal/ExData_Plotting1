w <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
sub3 <- w[as.Date(w$Date, format = "%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(w$Date, format = "%d/%m/%Y") <= as.Date("2007-02-02"),]
k <- as.numeric(levels(sub3$Sub_metering_1))[sub3$Sub_metering_1]
l <- as.numeric(levels(sub3$Sub_metering_2))[sub3$Sub_metering_2]
m <- sub3$Sub_metering_3
plot.ts(k,xlab = "", ylab = "Energy sub metering", main = "")
lines(l, col = "red")
lines(m, col = "blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), col = c("black", "red", "blue"))
dev.copy(png, "plot3.png", width = 480, height = 480)
dev.off()