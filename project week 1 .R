if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
tmp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip",tmp)
unzip(tmp)
unlink(tmp)
}
df <- read.csv("activity.csv")
sum_steps <- aggregate(steps ~ date, df, sum)
hist(sum_steps$steps, main = paste("Total Steps Each Day"), col="green", xlab="Total of Steps")
hist(tmp)
hist(df)

if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")) {
        tmp <- tempfile()
        download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",tmp)
        unzip(tmp)
        unlink(tmp)
}


power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
