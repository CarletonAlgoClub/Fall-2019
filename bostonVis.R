library(MASS)
library(tidyverse)

boston <- as.data.frame(Boston)

summary(boston)

boston %>% 
  ggplot(aes(rm, medv, color=crim, size=crim)) +
  geom_point() +
  geom_smooth(method = "lm")

basic.model <- lm(data = boston, medv ~ rm)

summary(basic.model)

boston %>% 
  ggplot(aes(crim)) +
  geom_density() 

boston %>% 
  ggplot(aes(log(crim))) +
  geom_density() 

boston %>% 
  ggplot(aes(rm)) +
  geom_density() 

log.model <- lm(data=boston, medv ~ rm + log(crim))

summary(log.model)
