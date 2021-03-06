#next line can be used to load the data by running assignment1.R script
#source("assignment1.R")
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
plot(data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (killowatts)", xaxt = "n")
axis(1, labels = weekdays(times[c(1, length(times)/2, length(times))] + 60, abbreviate = TRUE), at = c(1, length(times)/2, length(times)))
plot(data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", xaxt = "n")
axis(1, labels = weekdays(times[c(1, length(times)/2, length(times))] + 60, abbreviate = TRUE), at = c(1, length(times)/2, length(times)))
plot(data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(data$Sub_metering_2, col= "red")
lines(data$Sub_metering_3, col= "blue")
axis(1, labels = weekdays(times[c(1, length(times)/2, length(times))] + 60, abbreviate = TRUE), at = c(1, length(times)/2, length(times)))
legend("topright",bty = "n",lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", xaxt = "n")
axis(1, labels = weekdays(times[c(1, length(times)/2, length(times))] + 60, abbreviate = TRUE), at = c(1, length(times)/2, length(times)))
dev.off()