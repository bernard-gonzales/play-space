library(tidyverse)
scores <- 
  tibble(
    name = c("mike", "carol", "greg", "marcia", "peter", "jan", "bobby", "cindy", "alice"),
    school = c("south", "south", "south", "south", "north", "north", "north", "south", "south"),
    teacher = c("johnson", "johnson", "johnson", "johnson",  "smith", "smith", "smith", "perry", "perry"),
    sex = c("male", "female", "male", "female", "male", "female", "male", "female", "female"),
    math_score = c(4, 3, 2, 4, 3, 4, 5, 4, 5),
    reading_score = c(1, 5, 2, 4, 5, 4, 1, 5, 4)
  )
print(scores)
scores %>%
  slice(1:3)
scores_small <- scores %>%
  slice(1:3)
scores %>%
  arrange(desc(math_score))
scores %>%
  arrange(name)
scores %>%
  arrange(school, teacher, sex, math_score, reading_score)
scores %>%
  select(name, math_score, reading_score)
scores %>%
  select(-sex)
scores %>%
  select(-math_score, -reading_score)
scores %>%
  select(sex, everything())
scores %>%
  filter(sex == "male" & school == "south")
scores %>%
  filter(math_score > mean(math_score))
scores %>%
  filter(math_score >= 4 & reading_score >= 3)
scores %>%
  filter(math_score <= 3 | reading_score <= 3)
scores %>%
  filter(reading_score >= 2 & reading_score <= 4)
scores %>%
  filter(substr(name, 1, 1) == 'm')
scores %>%
  group_by(teacher) %>%
  filter(max(math_score) == 5)
scores %>%
  group_by(sex) %>%
  filter(mean(math_score) == 4)
scores %>%
  mutate(math_score * 10, reading_score * 10)
scores %>%
  mutate(math_reading_average = (reading_score + math_score) / 2)
scores %>%
  group_by(sex) %>%
  mutate(math_score_centered_by_sex = math_score - mean(math_score)) %>%
  arrange(desc(math_score_centered_by_sex))
scores %>%
  group_by(teacher) %>%
  mutate(reading_score_centered_by_teacher = reading_score - mean(reading_score))
scores %>%
  summarize(math_score_mean = mean(math_score))
scores %>%
  group_by(school) %>%
  summarize(min_math_score = min(math_score))
scores %>%
  group_by(teacher) %>%
  summarize(max(math_score))
