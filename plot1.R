w <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
sub3 <- w[as.Date(w$Date, format = "%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(w$Date, format = "%d/%m/%Y") <= as.Date("2007-02-02"),]
k <- as.numeric(levels(sub3$Global_active_power))[sub3$Global_active_power]
hist(k, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, "plot1.png", width = 480, height = 480)
dev.off()
