# Load Air Passengers
data(AirPassengers)

# Verify the Dataset
?AirPassengers
class(AirPassengers)
View(AirPassengers)

# Convert the dataset to a dataframe (Year as time index)
ap_df <- data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df

# Data Frame with years and months separately
ap_df_months <- data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df_months

# Base R Plot
plot(AirPassengers)

plot(AirPassengers,
     type = 'l',
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = 'red'
)

plot(AirPassengers,
     type = 'l',
     lwd = 1.5,
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No. of Passengers",
     col = 'red'
)

points(AirPassengers,
       type = 'o',
       pch = 16,
       col = 'blue'
)

# Importing the library ggplot2
library(ggplot2)

# ggplot Trend Plot
ggplot(ap_df, aes(x = year, y = passengers)) +
  geom_line(color = 'darkgreen', linewidth = 0.5) +
  geom_point(color = 'red', size = 0.5) +
  geom_smooth(se = FALSE, color = 'pink') +
  labs(
    title = 'Trend Analysis of Air Passengers',
    subtitle = 'From 1949–1960',
    caption = 'Using Built-in AirPassengers Dataset',
    x = 'Months',
    y = 'No. of Passengers'
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 10)
  )

