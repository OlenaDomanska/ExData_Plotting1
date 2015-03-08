data=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.string="?")
attach(data)
Date1=as.Date(Date,format="%d/%m/%Y",origin="16/12/2006")
Date=Date1
data1=data[Date=="2007-02-01"|Date=="2007-02-02",]
hist(data1$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main ="Global Active Power")
dev.copy(png,file='plot1.png')
dev.off()