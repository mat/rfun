
# R -q --vanilla < basic.r

dtaframe <- read.table("data/nums", sep = ";", header=TRUE)

dtaframe <- subset(dtaframe, count >= 100)

colummn <- dtaframe$count
# dput(column)

print(range(colummn))
print(summary(colummn))
print(quantile(colummn, c(.50, .75, .90, .98, .99, .999, .9999, .99999, 1.0)))

freq <- table(colummn)
mode <- as.numeric(names(freq)[which.max(freq)])
print(mode)
