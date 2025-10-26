   # Install packages
#install.packages("lattice")
library(lattice)
library(ggplot2)

   # Load  & Inspect Data
myData <- data.frame(mtcars)
head(myData)

   # Basic R Graphics
# Scatter Plot
plot(myData$wt, myData$mpg,
     main   = "Weight vs. MPG",
     xlab   = "Weight",
     ylab   = "MPG")

    # Lattice Graphics
# Scatter plot
xyplot(mpg ~ wt | factor(am), 
       data = myData, 
       main = "MPG vs. Weight by Transmission")

   # Ggplot2 Graphics
ggplot(myData, aes(qsec)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ cyl) +
  labs(title = "Qsec distribution by Cylinders")

