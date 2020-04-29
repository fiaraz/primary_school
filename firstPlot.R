# File:   Plot.R
# Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################
?iris

head(iris)
plot(iris)
# PLOT DATA WITH PLOT() ####################################

?plot  # Help for plot()
plot(iris$Sepal.Width, iris$Petal.Width)

plot(iris$Species)  # Categorical variable
plot(iris$Petal.Length)  # Quantitative variable
plot(iris$Species, iris$Petal.Width)  # Cat x quant
plot(iris$Petal.Length, iris$Sepal.Length)  # Quant pair
plot(iris)  # Entire data frame
summary(iris)
# Plot with options
plot(iris$Petal.Length, iris$Sepal.Length,
  col = "#cc0000",  # Hex code for datalab.cc red
  pch = 19,         # Use solid circles for points
  main = "Aniyahs Hypothesis Petal Length vs. Sepal Length",
  xlab = "Petal Length",
  ylab = "Sepal Length")

# PLOT FORMULAS WITH PLOT() ################################

plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)

# Formula plot with options
plot(dnorm, -3, +3,
  col = "#cc0000",
  lwd = 5,
  main = "Standard Normal Distribution",
  xlab = "z-scores",
  ylab = "Density")

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
