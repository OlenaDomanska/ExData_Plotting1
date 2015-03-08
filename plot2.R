
data=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.string="?")
Date1=as.Date(data$Date,format="%d/%m/%Y",origin="16/12/2006")
data$Date=Date1
data1=data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
x <- paste(data1$Date, data1$Time)
data1$Time=strptime(x,"%Y-%m-%d %H:%M:%S")
plot(data1$Time,data1$Global_active_power,type="l",xlab='',ylab="Global Active Power (kilowatts)")
dev.copy(png,file='plot2.png')
dev.off()