# Read data
student6 <- read.table(file.choose(), header = TRUE, stringsAsFactors = FALSE)

# Trun into df
library(tidyverse)
student6.df <- student6 %>%
  separate(col = "Name.Age.Sex.Grade", 
           into = c("Name", "Age", "Sex", "Grade")) %>%
  mutate(
    Age = as.numeric(Age), 
    Grade = as.numeric(Grade))

# Load plyr & compute mean of grade by sex
library(plyr)
gender_mean <- ddply(
  student6.df,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

# Write grouped means into text file
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)

# Select rows where Name containa i/I
i_students <- subset(
  student6.df,
  grepl("i", Name, ignore.case = TRUE)
)

# Extract names and write into csv
write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)

# Save full i_students filtered data into csv
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)
