
# R -q --vanilla < basic.r

dtaframe <- read.table("data/nums", sep = ";")

colummn <- dtaframe$V2
# dput(column)

print(range(colummn))
print(summary(colummn))
print(quantile(colummn, c(.50, .75, .90, .98, .99, .999, .9999, .99999, 1.0)))
