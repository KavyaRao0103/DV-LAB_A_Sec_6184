# Load the Air Quality Dataset
data(airquality)

# Understand the dataset
str(airquality)
View(airquality)
class(airquality)
?airquality

# Basic Box Plot for Ozone
boxplot(airquality$Ozone,
        main = "Box Plot of Ozone Levels",
        ylab = "Ozone (ppb)",
        col = "skyblue")

# Box Plot for Solar Radiation
boxplot(airquality$Solar.R,
        main = "Box Plot of Solar Radiation",
        ylab = "Solar Radiation",
        col = "lightgreen")

# Box Plot for Wind Speed
boxplot(airquality$Wind,
        main = "Box Plot of Wind Speed",
        ylab = "Wind (mph)",
        col = "orange")

# Box Plot for Temperature
boxplot(airquality$Temp,
        main = "Box Plot of Temperature",
        ylab = "Temperature (°F)",
        col = "pink")

# Multi-Variable Box Plot
boxplot(airquality[, c("Ozone", "Solar.R", "Wind", "Temp")],
        main = "Air Quality Parameters Box Plot",
        col = c("skyblue", "lightgreen", "orange", "pink"),
        ylab = "Values")
