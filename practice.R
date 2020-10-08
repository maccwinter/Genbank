library(ape)
packageVersion("ape")



hex <- read.table("GenbankHexa.csv", quote="\"", stringsAsFactors=FALSE)
oct <- read.table("genbankOcto.csv", quote ="\"", stringsAsFactors =FALSE)
head(hex)

as.list(hex)$V1 -> hexL
as.list(oct)$V1 -> octL
head(hexL)

hexgen <- read.GenBank(hexL, species.names = T)
octgen <- read.GenBank(octL, species.names = T)

