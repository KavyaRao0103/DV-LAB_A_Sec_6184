library(ggplot2)

# Load dataset
data("airquality")

# Remove NA values
df <- na.omit(airquality)

# Histogram of Daily Maximum Temperature (La Guardia Airport)

p1 <- ggplot(df, aes(x = Temp)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black") +
  labs(title = "Histogram of Daily Maximum Temperature\n(La Guardia Airport, 1973)",
       x = "Temperature (°F)",
       y = "Frequency") +
  theme_minimal()

p1

# Save plot
ggsave("plots/week1B_plot_-1.png", plot = p1)