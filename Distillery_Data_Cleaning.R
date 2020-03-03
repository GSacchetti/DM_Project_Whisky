library(dplyr)

df1 <- Distillery

df1$Founded <- NULL
df1$Closed <- NULL
df1$Capacity <- NULL
df1$SpiritStill <- NULL
df1$WashStill <- NULL
df1$Owner <- NULL
df1$Wishlist <- NULL
df1$Specialist <- NULL

nrow(df1[df1$Votes == "NA",])
df1$Votes <- NULL

nrow(df1[df1$Collection == "NA",])
df1$Collection <- NULL

nrow(df1[df1$Whisky == "NA",])
df1 <- filter(df1, Whisky != "NA")

nrow(df1[df1$Company == "NA",])
nrow(df1[df1$Country == "NA",])
nrow(df1[df1$Status == "NA",])
nrow(df1[df1$Views == "NA",])
nrow(df1[df1$Ranking == "NA",])

nrow(df1[df1$Rating == "NA",])
df1 <- filter(df1, Rating != "NA")

nrow(df1[df1$Address == "NA",])
nrow(df1[df1$lon == "NA",])
df1 <- filter(df1, lon != "NA")
nrow(df1[df1$lat == "NA",])

