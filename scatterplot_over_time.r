library(ggplot2)

dtaframe <- read.table("data/timestamp_count.csv", sep = ",")

dtaframe$V1 <- as.POSIXct(dtaframe$V1, tz="GMT", format="%Y-%m-%dT%H:%M:%S")

print(range(dtaframe$V1))
print(summary(dtaframe$V1))

print(range(dtaframe$V2))
print(summary(dtaframe$V2))

# p <- ggplot(dtaframe, aes(x=V1,y=V2))
# p + geom_point()

p <- ggplot(dtaframe, aes(x=V1,y=V2))
p + geom_point() + scale_x_datetime(name="Time")

# p <- ggplot(dtaframe, aes(x=V1,y=V2))
# p + geom_point() + scale_x_datetime(name="Time", major = "6 hours")
