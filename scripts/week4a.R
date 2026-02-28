# Load the Data
data(iris)

# Understand the data
str(iris)
View(iris)
class(iris)
?iris

# Basic Box plot
boxplot(iris$Sepal.Length)

# Add Title & Labels
boxplot(iris$Sepal.Length,
        main = "Box Plot for Sepal Length",
        ylab = "Sepal Length",
        col = "skyblue")

# Grouped Box Plot
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c("pink", "green", "blue"))

# Multi-Variable Box Plot
boxplot(iris[, 1:4],
        main = "Multi Variable Box Plot",
        col = c("pink", "green", "blue", "purple"))

# Using Custom Color Palette (Base R)
species_colors <- c(
  "setosa" = "red",
  "versicolor" = "steelblue",
  "virginica" = "green"
)

boxplot(Sepal.Length ~ Species,
        data = iris,
        col = species_colors,
        main = "Sepal Length by Species (Custom Color Palette)",
        xlab = "Species",
        ylab = "Sepal Length")

# ---------------- GGplot2 ----------------

library(ggplot2)

# Basic ggplot Boxplot
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot()

# ggplot with Fill Color
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  theme_minimal()

# ggplot with Custom Color Palette
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() 
scale_fill_manual(values = species_colors) +
  theme_minimal()

