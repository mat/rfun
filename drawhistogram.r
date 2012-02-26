library(ggplot2)

# R --vanilla < drawhistogram.r

dtaframe <- read.table("data/nums", sep = ";")
dtaframe2 <- read.table("data/100_000.txt.bz2")

print(range(dtaframe$V2))
print(summary(dtaframe$V2))

# png("histogram.png")
# V1
# m <- ggplot(dtaframe, aes(x=V2))
# m + geom_histogram()

# v2
# m <- ggplot(dtaframe, aes(x=V2))
# m + geom_bar(binwidth=2000)

# v2.2
# m <- ggplot(dtaframe, aes(x=V2))
# m + geom_bar(binwidth=4000) + coord_flip()

# v3
# m <- ggplot(dtaframe2, aes(x=V2))
# m + geom_histogram()

# v4
# m <- qplot(dtaframe, aes(x=V2))
# m + geom_histogram()
# save(m, file='uuuh.png')

# v5
m <- ggplot(dtaframe, aes(x=V2))
m + geom_bar(binwidth=2500) + facet_wrap(~ V1, ncol = 1)
ggsave(filename="histogram.pdf",width=8.5)

