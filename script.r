library(ggplot2)
library(tibble)

dat <- tibble(x = rnorm(100), y = x + rnorm(100, sd = 0.2))

print(ggplot(dat, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(
    title = "Scatter Plot of x vs y with Trend Line",
    x = "x",
    y = "y"
  ))
