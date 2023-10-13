#Librerías
library(dplyr)
library(forcats)
library(ggplot2)
library(naniar)
library(assertive)
library(purrr)
library(stringr)
library(simputation)
library(tidyr)
library(purrr)
library(tidyverse)
library(scales)
library("glmnet")
library(lmtest)
library(corrplot)
library(car)

options(scipen = 999, digits = 3)

#Data base
car <- read.csv("car_data.csv")

car <- car %>%
  mutate(Gender_Male = ifelse(Gender == "Male", 1, 0))

#Para ver qué variables debemos meter en nuestro análisis discriminante
gender <- cor(car$Gender_Male, car$Purchase) #-0.04
Age <- cor(car$Age, car$Purchase) #0.61
Salary <- cor(car$AnnualSalary, car$Purchase) #0.36

