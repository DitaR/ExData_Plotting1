#next line can be used to load the data by running assignment1.R script
#source("assignment1.R")
png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (killowatts)")
dev.off()