#next line can be used to load the data by running assignment1.R script
#source("assignment1.R")
png("plot2.png", width = 480, height = 480)
plot(data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (killowatts)", xaxt = "n")
axis(1, labels = weekdays(times[c(1, length(times)/2, length(times))] + 60, abbreviate = TRUE), at = c(1, length(times)/2, length(times)))
dev.off()