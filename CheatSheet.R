#Start of code
#Load list of librarys
rm(list = ls())
library(tidyverse)

#correct way to read csv file
"FileName" <- read.csv("datasets//FileName", stringsAsFactors = TRUE)

#mean(FileName$dataset, na/rm = TRUE )
mean(countries$ecological_footprint_2000, na.rm = TRUE)
median(countries$ecological_footprint_2000, na.rm = TRUE)

#Graphs
#Histogram.
ggplot(caffeine, aes(x=caffeine_mg_16oz)) +
  geom_histogram()
#Bar Graph
ggplot(titanicData, aes(x=sex)) +
  geom_bar(stat="count")
#Box Plot
ggplot(titanicData, aes(x=sex, y=age)) +
  geom_boxplot()

guppyFatherSonData <- read.csv("datasets/guppy.csv", stringsAsFactors = TRUE)

ggplot(guppyFatherSonData, aes(x=fatherOrnamentation, y=sonAttractiveness)) +
  geom_point()
#Normal Distribution
sim_norm <- rnorm(n = fdims %>% pull(hgt) %>% length(),
                  mean = fhgtmean,
                  sd = fhgtsd)
qqnorm(sim_norm)
qqline(sim_norm)
#Pnorm in use.
wgt <- fdims$wgt
mean_wgt <- mean(wgt)
sd_wgt <- sd(wgt)
#______
prob_over_80 <- 1- pnorm(80, mean = mean_wgt, sd = sd_wgt)
prob_over_80
#_______________
A USA Today/Gallup poll conducted between 2010 and 2011 asked
a group of unemployed and underemployed Americans
if they have had major problems in their relationships with their spouse
or another close family member as a result of not
having a job (if unemployed) or not having a full-time job
(if underemployed).
27% of the 1,145 unemployed respondents and 25% of the 675 underemployed
respondents said they hadmajor problems in relationships as a result of
their employment status.
Conduct a test to determine whether an association
exists between the presence of relationship problems and whether an individual
is unemployedor underemployed. Use the 𝛼=0.05level of significance.
p1 <- .27
n1 <- 1145
p2 <- .25
n2 <- 675
se <- sqrt((p1 * (1 - p1) / n1) + (p2 * (1 - p2) / n2))

z <- (p1-p2) / se
round (z , 3)

p <- 2*(1- pnorm(abs(z)))
round(p,4)



