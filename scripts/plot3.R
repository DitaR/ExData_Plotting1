#next line can be used to load the data by running assignment1.R script
#source("assignment1.R")
png("plot3.png", width = 480, height = 480)
plot(data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(data$Sub_metering_2, col= "red")
lines(data$Sub_metering_3, col= "blue")
axis(1, labels = weekdays(times[c(1, length(times)/2, length(times))] + 60, abbreviate = TRUE), at = c(1, length(times)/2, length(times)))
legend("topright",lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()