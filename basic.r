
# R --vanilla < basic.r

dtaframe <- read.table("data/nums", sep = ";")

colummn <- dtaframe$V2

print(range(colummn))
print(summary(colummn))
print(quantile(colummn, c(.75, .90, .98, .99, .999, .9999)))
