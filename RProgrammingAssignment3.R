# Load ggplot #
library(ggplot2)

# Define and Inspect Data #
   # Create Vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll   <- c( 12, 75, 43, 19, 1, 21, 19)

   # Create Data Frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

   # Inspect DF
str(df_polls)
head(df_polls)

# Compute Summary Statistics #
   # Mean of polls
mean(df_polls$ABC_poll)
mean(df_polls$CBS_poll)
   # Median of polls
median(df_polls$ABC_poll)
median(df_polls$CBS_poll)
   # Range of polls
range(df_polls[, c("ABC_poll", "CBS_poll")])
   # Add Column for CBS & ABC Difference
df_polls$Diff <- ifelse(df_polls$CBS_poll >= df_polls$ABC_poll,
                        df_polls$CBS_poll - df_polls$ABC_poll, 
                        df_polls$ABC_poll - df_polls$CBS_poll)
df_polls

# Plot Data Frame #
polls_plot <- ggplot(df_polls, aes(x = Name, y = Diff)) +
              geom_col(fill = "#89CFF0", color = "blue")
polls_plot
