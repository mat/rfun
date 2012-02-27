library(ggplot2)

# R --vanilla < drawhistogram.r

dtaframe <- read.table("data/nums", sep = ";")
# dtaframe2 <- read.table("data/100_000.txt.bz2")

print(range(dtaframe$V2))
print(summary(dtaframe$V2))

m <- ggplot(dtaframe, aes(factor(V1), V2))
m + geom_boxplot() + coord_flip() + geom_jitter()
