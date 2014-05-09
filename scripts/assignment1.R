#load and filter data supposing that file 'household_power_consumption.txt' is in working directory
Sys.setlocale(category = "LC_ALL", locale = "C")
file = 'household_power_consumption.txt'
text = readLines(file)
lines <- grepl('^Date|^[1-2]/2/2007', text)
text <- text[lines]
text<-textConnection(text,"rt")
data<-read.csv(text,sep=";",header=TRUE)
times <- as.POSIXct(strptime(paste(data[,1], data[,2]), format = "%d/%m/%Y %H:%M:%S"))
