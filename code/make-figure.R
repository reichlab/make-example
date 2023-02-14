## script to analyze data
message("starting make-figure.R")

library(tidyverse)

dat <- read_csv("data/chicagoNMMAPS.csv")

p <- ggplot(dat, aes(x=time, y=death)) +
  geom_line()

pdf("figures/plot1.pdf")
print(p)
dev.off()
