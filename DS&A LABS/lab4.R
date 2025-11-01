#Lab 4

data('iris')
data('mtcars')
data('airquality')

# Q1. Calculate the mean, median, mode, and standard deviation of Petal.Width from iris.

#mean
mean_pw<-mean(iris$Petal.Width)
cat("mean: ",mean_pw)

#median
median_pw<- median(iris$Petal.Width)
cat("median: ",median_pw)

#mode
library(DescTools)
mode_pw<-mode(iris$Petal.Width)
cat("Mode: ",mode_pw)

#Standard Deviation
sd_pw<-sd(iris$Petal.Width,na.rm=TRUE)
cat("SD: ",sd_pw)

# Q2. Draw a histogram of mpg from the mtcars dataset.

hist(mtcars$mpg,
     breaks = 10,
     col = "skyblue",
     main = "Histogram of MPG",
     xlab = "Miles per gallon")
     )

# Q3. Create a scatterplot of hp vs mpg from mtcars.
library(ggplot2)
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "steelblue") +
  labs(title = "mpg vs hp (scatter)", x = "Horsepower (hp)", y = "Miles per gallon (mpg)")

# Q4. Generate a boxplot for Ozone in the airquality dataset.
print("4. Generating Boxplot for Ozone...")
boxplot(airquality$Ozone,
        main = "Boxplot of Ozone Levels",
        ylab = "Ozone (parts per billion)",
        col = "lightgreen",
        border = "darkgreen",
        notch = TRUE) 

# Q5. Find the variance of Sepal.Width in the iris dataset.
print("5. Variance of Sepal.Width:")
variance_sw <- var(iris$Sepal.Width)

cat("Variance of Sepal.Width:", variance_sw, "\n")



