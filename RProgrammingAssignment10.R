       ## Assignment 10 ##
# Load packages
library(ggplot2)
library(readr)

# Load Data
hotdogs <- read_csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv")

# Hot Dog Competition Bar Graph
contest_results <- ggplot(hotdogs, aes(x = Year, y = `Dogs eaten`, 
                                       fill = as.factor(`New record`))) +
  geom_col() +
  scale_fill_manual(values = c("red", "green")) +
  labs(title = "Nathans Hot Dog Eating Contest Results (1980 - 2010)", 
       x = "Year", 
       y = "Hot Dogs Eaten", 
       fill = "New Record")
contest_results

# Hot Dog Competition Countries Bar Graph 
contest_country <- ggplot(hotdogs, aes(x = Year, y = `Dogs eaten`, fill = Country)) +
  geom_col() +
  labs(title = "Countries of Hot Dog Eating Contest Winners (1980-2010) ", 
       x = "Year", 
       y = "Hotdogs Eaten")
contest_country
