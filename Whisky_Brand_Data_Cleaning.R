library(VIM)
df2 <- Whisky_Brand

df2$X.1 <- NULL
df2$X <- NULL

df2_A <- df2[df2$WB.Ranking == "A",]
df2_B <- df2[df2$WB.Ranking == "B",]
df2_C <- df2[df2$WB.Ranking == "C",]
df2_D <- df2[df2$WB.Ranking == "D",]
df2_E <- df2[df2$WB.Ranking == "E",]
df2_F <- df2[df2$WB.Ranking == "F",]
df2_G <- df2[df2$WB.Ranking == "G",]

df2$Rating[is.na(df2$Rating) & df2$WB.Ranking == "A"] <- mean(df2_A$Rating, na.rm = TRUE)
df2$Rating[is.na(df2$Rating) & df2$WB.Ranking == "B"] <- mean(df2_B$Rating, na.rm = TRUE)
df2$Rating[is.na(df2$Rating) & df2$WB.Ranking == "C"] <- mean(df2_C$Rating, na.rm = TRUE)
df2$Rating[is.na(df2$Rating) & df2$WB.Ranking == "D"] <- mean(df2_D$Rating, na.rm = TRUE)
df2$Rating[is.na(df2$Rating) & df2$WB.Ranking == "E"] <- mean(df2_E$Rating, na.rm = TRUE)
df2$Rating[is.na(df2$Rating) & df2$WB.Ranking == "F"] <- mean(df2_F$Rating, na.rm = TRUE)
df2$Rating[is.na(df2$Rating) & df2$WB.Ranking == "G"] <- mean(df2_G$Rating, na.rm = TRUE)


df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "A"] <- round(mean(df2_A$Votes, na.rm = TRUE))
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "B"] <- round(mean(df2_B$Votes, na.rm = TRUE))
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "C"] <- round(mean(df2_C$Votes, na.rm = TRUE))
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "D"] <- round(mean(df2_D$Votes, na.rm = TRUE))
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "E"] <- round(mean(df2_E$Votes, na.rm = TRUE))
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "F"] <- round(mean(df2_F$Votes, na.rm = TRUE))
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "G"] <- round(mean(df2_G$Votes, na.rm = TRUE))


df2$Whiskies[is.na(df2$Whiskies) & df2$WB.Ranking == "A"] <- mean(df2_A$Whiskies, na.rm = TRUE)
df2$Whiskies[is.na(df2$Whiskies) & df2$WB.Ranking == "B"] <- mean(df2_B$Whiskies, na.rm = TRUE)
df2$Whiskies[is.na(df2$Whiskies) & df2$WB.Ranking == "C"] <- mean(df2_C$Whiskies, na.rm = TRUE)
df2$Whiskies[is.na(df2$Whiskies) & df2$WB.Ranking == "D"] <- mean(df2_D$Whiskies, na.rm = TRUE)
df2$Whiskies[is.na(df2$Whiskies) & df2$WB.Ranking == "E"] <- mean(df2_E$Whiskies, na.rm = TRUE)
df2$Whiskies[is.na(df2$Whiskies) & df2$WB.Ranking == "F"] <- mean(df2_F$Whiskies, na.rm = TRUE)
df2$Whiskies[is.na(df2$Whiskies) & df2$WB.Ranking == "G"] <- mean(df2_G$Whiskies, na.rm = TRUE)

df2$WB.Ranking <- as.character(df2$WB.Ranking)
df2$WB.Ranking[df2$WB.Ranking == "A"] <- 1
df2$WB.Ranking[df2$WB.Ranking == "B"] <- 2
df2$WB.Ranking[df2$WB.Ranking == "C"] <- 3
df2$WB.Ranking[df2$WB.Ranking == "D"] <- 4
df2$WB.Ranking[df2$WB.Ranking == "E"] <- 5
df2$WB.Ranking[df2$WB.Ranking == "F"] <- 6
df2$WB.Ranking[df2$WB.Ranking == "G"] <- 7
df2$WB.Ranking <- as.factor(df2$WB.Ranking)

df2_tmp <- df2[is.finite(rowSums(df2)),]

aggr(df2)