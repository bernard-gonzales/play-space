library(vctrs)
library(tidyverse)
head(mpg)
mpg %>% ggplot()
mpg %>%
  ggplot(aes(x=cyl, y=hwy)) +
  geom_point()
mpg %>%
  ggplot(aes(x=class, y=drv)) +
  geom_point()
x <- seq(-6 * pi, 6 * pi, length.out = 100)
dat <- data.frame(x=x, y=sin(x)/x)
head(dat)
ggplot(data=dat, mapping=aes(x=x,y=y)) + geom_line()
cars %>%
  ggplot(aes(x=speed, y=dist)) +
  geom_point(mapping=aes(color=dist>80))
cars %>%
  ggplot(aes(x=speed,y=dist)) +
  geom_point(mapping=aes(color=dist>80)) +
  scale_color_manual(values=c("blue","red"))
cars %>%
  ggplot(aes(x=speed,y=dist)) +
  geom_point(mapping=aes(color=dist>80)) +
  scale_color_manual(values=c("blue","red")) +
  geom_smooth(method='loess')
mpg %>%
  ggplot() +
  geom_point(aes(x=hwy,y=cty)) +
  facet_grid(drv ~ cyl)
iris %>%
  ggplot(aes(x=Sepal.Length,y=Sepal.Width,color=Species,shape=Species)) +
  geom_point() +
  geom_density2d() +
  ggtitle('IRIS') +
  theme_light()
