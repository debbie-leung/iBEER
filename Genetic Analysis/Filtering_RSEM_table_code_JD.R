## Code filtering data Debbie
library(dplyr)
RefList <- read.csv("Transcripts_ID_functional_annot.csv")
class(RefList) # these are imported as dataframe
List <- as.list(as.data.frame(t(RefList))) # I changed to list class
class(List)
List

RSEM <- read.csv("Transcript_RSEM_count_table.csv")
class(RSEM)
intersect(RSEM$Name, RefList$Name)

v1 <- c(RSEM)
v2 <- c(RefList)

FinalRSEM <- subset(RSEM, RSEM$Name %in% RefList$Name)  # with this I can get the filtered counts for the annotated transcripts

