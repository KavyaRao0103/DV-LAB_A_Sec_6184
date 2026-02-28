# Load the dataset
data(iris)

# Inspect the Data
?iris
head(iris, 3)
str(iris)
class(iris)

# Very Basic Chart
# Count of each species
# To see the data in the column Species
iris$Species
View(iris)

# Plotting a bar chart (basic)
barplot(
  table(iris$Species)
)

# Labeled bar chart
barplot(
  table(iris$Species),
  main = "Count of Iris Species",
  xlab = "Species",
  ylab = "Number of Items",
  col = "steelblue"
)

# Bar chart from aggregated Data
# Using Mean Sepal Length per Species
mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)
mean_sepal

barplot(
  mean_sepal,
  main = "Average Sepal Length by Species",
  xlab = "Species",
  ylab = "Mean Sepal Length",
  col = "lightgreen"
)

# Grouped Bar chart
# Compare Sepal & Petal Length (mean)
group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  Petal = tapply(iris$Petal.Length, iris$Species, mean)
)
group_means

# Grouped (Clustered) bar chart
barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Clustered Bar Chart: Sepal vs Petal Length"
)

# Grouped (Stacked) bar chart
barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue", "pink"),
  legend.text = TRUE,
  main = "Stacked Bar Chart: Sepal vs Petal Length"
)
