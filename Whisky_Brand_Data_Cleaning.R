df2 <- Whisky_Brand

df2$X.1 <- NULL

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


df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "A"] <- mean(df2_A$Votes, na.rm = TRUE)
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "B"] <- mean(df2_B$Votes, na.rm = TRUE)
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "C"] <- mean(df2_C$Votes, na.rm = TRUE)
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "D"] <- mean(df2_D$Votes, na.rm = TRUE)
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "E"] <- mean(df2_E$Votes, na.rm = TRUE)
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "F"] <- mean(df2_F$Votes, na.rm = TRUE)
df2$Votes[is.na(df2$Votes) & df2$WB.Ranking == "G"] <- mean(df2_G$Votes, na.rm = TRUE)