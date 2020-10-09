library(ape)
packageVersion("ape")



hex <- read.table("GenbankHexa.csv", quote="\"", stringsAsFactors=FALSE)
oct <- read.table("genbankOcto.csv", quote ="\"", stringsAsFactors =FALSE)


as.list(hex)$V1 -> hexL
as.list(oct)$V1 -> octL

head(hexL)
head(octL)

hexgen <- read.GenBank(hexL, species.names = T)
octgen <- read.GenBank(octL, species.names = T)
head(hexgen)

names_hex <- data.frame(species = attr(hexgen,"species"), accession = names(hexgen))

names(hexgen) <- attr(hexgen,"species")

names_oct <- data.frame(species = attr(octgen,"species"), accession = names(octgen))

names(octgen) <- attr(octgen,"species")

head(names_hex)
head(names_oct)


write.dna(hexgen,"hexacoralmtDNA.fasta", format="fasta")
write.dna(octgen,"octocoralmtDNA.fasta", format="fasta")



























