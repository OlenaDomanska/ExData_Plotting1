data=read.table("household_power_consumption.txt",header=TRUE,sep=";",na.string="?")
> attach(data)
The following objects are masked from data (pos = 3):

    Date, Global_active_power, Global_intensity, Global_reactive_power,
    Sub_metering_1, Sub_metering_2, Sub_metering_3, Time, Voltage
Date1=as.Date(Date,format="%d/%m/%Y",origin="16/12/2006")
Date=Date1
> data1=data[Date=="2007-02-01"|Date=="2007-02-02",]
> dim(data1)
[1] 2880    9
> hist(data1$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main ="Global Active Power")

