library(ggplot2)
data("VADeaths")

df <- as.data.frame(VADeaths)

df_long <- data.frame(
  AgeGroup = rep(rownames(df), times = ncol(df)),
  Category = rep(colnames(df), each = nrow(df)),
  DeathRate = as.vector(as.matrix(df))
)
p1 <- ggplot(df_long, aes(x = DeathRate)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Histogram of VA Death Rates",
       x = "Death Rate",
       y = "Frequency") +
  theme_minimal()

ggsave("plots/week1A_plot-1.png", plot = p1)
p1
p2 <- ggplot(df_long, aes(x = DeathRate)) +
  geom_histogram(binwidth = 5, fill = "orange", color = "black") +
  facet_wrap(~Category) +
  labs(title = "Histogram by Category",
       x = "Death Rate",
       y = "Frequency") +
  theme_classic()

ggsave("plots/week1A_plot-2.png", plot = p2)
p2
p3 <- ggplot(df_long, aes(x = DeathRate, fill = Category)) +
  geom_histogram(binwidth = 5, alpha = 0.5, position = "identity") +
  labs(title = "Overlapping Histogram",
       x = "Death Rate",
       y = "Frequency") +
  theme_light()

ggsave("plots/week1A_plot-3.png", plot = p3)
p3
