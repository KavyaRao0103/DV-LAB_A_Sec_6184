library(ggplot2)

# Load dataset
data("airquality")

# Remove missing values
df <- na.omit(airquality)

# Histogram of Ozone concentration
ggplot(df, aes(x = Ozone)) +
  geom_histogram(binwidth = 10, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Ozone Concentration",
       x = "Ozone (ppb)",
       y = "Frequency") +
  theme_minimal()