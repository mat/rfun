library(ggplot2)


# 2012-03-16T10:56:42+01:00,91
# 2012-03-16T11:37:36+01:00,75
# ...
# 2012-03-17T12:18:34+01:00,49
dtaframe <- read.table("data/timestamp_count.csv", sep = ",", header=TRUE)
dtaframe$time <- as.POSIXct(dtaframe$time, tz="GMT", format="%Y-%m-%dT%H:%M:%S")

dtaframe <- subset(dtaframe, time >= as.POSIXct(strptime('2012-03-13 18:55:00', '%Y-%m-%d %H:%M:%S')))
dtaframe <- subset(dtaframe, time <= as.POSIXct(strptime('2012-03-13 19:15:00', '%Y-%m-%d %H:%M:%S')))

print(range(dtaframe$time))
print(summary(dtaframe$time))

print(range(dtaframe$count))
print(summary(dtaframe$count))

# p <- ggplot(dtaframe, aes(x=V1,y=V2))
# p + geom_point()

# p <- ggplot(dtaframe, aes(x=time,y=count))
# p + geom_point() + scale_x_datetime()

# p <- ggplot(dtaframe, aes(x=V1,y=V2))
# p + geom_point() + scale_x_datetime(name="Time", major = "6 hours")

p <- ggplot(dtaframe, aes(x=time,y=count))
p + geom_point() + scale_x_datetime() + opts(axis.text.x=theme_text(angle=90))
