data=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.string="?")
Date1=as.Date(data$Date,format="%d/%m/%Y",origin="16/12/2006")
data$Date=Date1
data1=data[data$Date=="2007-02-01"|data$Date=="2007-02-02",]
x <- paste(data1$Date, data1$Time)
data1$Time=strptime(x,"%Y-%m-%d %H:%M:%S")
par(mfrow=c(2,2))
plot(data1$Time,data1$Global_active_power,type="l",xlab='',ylab="Global Active Power (kilowatts)")
plot(data1$Time,data1$Voltage,type="l",xlab='datetime',ylab="Voltage")
plot(data1$Time,data1$Sub_metering_1,type="l",col="black",xlab='',ylab="Energy sub metering")
par(new=TRUE)
plot(data1$Time,data1$Sub_metering_2,type="l",col="red",xlab='',ylab="Energy sub metering",ylim=range(0:30),yaxt='n')
par(new=TRUE)
plot(data1$Time,data1$Sub_metering_3,type="l",col="blue",xlab='',ylab="Energy sub metering",ylim=range(0:30),,yaxt='n')
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = 1,cex=0.8)
plot(data1$Time,data1$Global_reactive_power,type="l",xlab='datetime',ylab="Global_reactive_power")


dev.copy(png,file='plot4.png')
dev.off()