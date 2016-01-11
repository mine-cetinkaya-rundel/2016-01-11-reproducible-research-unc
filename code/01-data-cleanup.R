# load packages -----------------------------------------------------

library(dplyr)

# load data ---------------------------------------------------------

#big5 <- read.delim("../raw-data/big5.csv")

# check sample size is 19,719 as stated in README -------------------

if(nrow(big5) != 19719) { print("Sample size doesn't match README!") }

# race --------------------------------------------------------------

race_code <- matrix(c(1, "Mixed Race",
                      2, "Arctic",
                      3, "Caucasian (European)",
                      4, "Caucasian (Indian)",
                      5, "Caucasian (Middle East)",
                      6, "Caucasian (North African, Other)",
                      7, "Indigenous Australian",
                      8, "Native American",
                      9, "North East Asian",
                      10, "Pacific",
                      11, "South East Asian",
                      12, "West African, Bushmen, Ethiopian",
                      13, "Other",
                      0, NA), ncol = 2, byrow = TRUE) 

race_code <- data.frame(race = as.numeric(as.character(race_code[,1])), 
                        race_string = race_code[,2])

big5 <- left_join(big5, race_code)

# remove coded race variable

big5 <- big5 %>%
  select(-race) %>%
  rename(race = race_string) %>%
  select(race, age:O10)

# age --------------------------------------------------------------

big5 <- filter(big5, age < 100) # reasonable ages only

# engnat -----------------------------------------------------------

big5 <- big5 %>%
  mutate(engnat = ifelse(engnat == 1, "Native english",
                         ifelse(engnat == 2, "Non-native english",
                                NA)))

# gender -----------------------------------------------------------

big5 <- big5 %>%
  mutate(gender = ifelse(gender == 1, "Male",
                         ifelse(gender == 2, "Female",
                                ifelse(gender == 3, "Other",
                                       NA))))

# hand -------------------------------------------------------------

big5 <- big5 %>%
  mutate(hand = ifelse(hand == 1, "Right",
                       ifelse(hand == 2, "Left",
                              ifelse(hand == 3, "Both",
                                     NA))))

# source -----------------------------------------------------------

big5 <- big5 %>%
  mutate(source = ifelse(source == 1, "Test website",
                        ifelse(source == 2, "Google",
                               ifelse(source == 3, "Facebook",
                                      ifelse(source == 4, ".edu",
                                             ifelse(source == 5, "Other",
                                                    NA))))))

# calculate scores -------------------------------------------------

# based on
# 1. http://personality-testing.info/printable/big-five-personality-test.pdf
# 2. http://ipip.ori.org/newScoringInstructions.htm

# E = Extraversion

big5 <- big5 %>%
  mutate(extraversion = 20 + E1 - E2 + E3 - E4 + E5 - E6 + E7 - E8 + E9 - E10)
  
# A = Agreeableness

big5 <- big5 %>%
  mutate(agreeableness = 14 - A1 + A2 - A3 + A4 - A5 + A6 - A7 + A8 + A9 + A10)
 
# C = Conscientiousness

big5 <- big5 %>%
  mutate(conscientiousness = 14 + C1 - C2 + C3 - C4 + C5 - C6 + C7 - C8 + C9 + C10)

# N = Neuroticism

big5 <- big5 %>%
  mutate(neuroticism = 38 - N1 + N2 - N3 + N4 - N5 - N6 - N7 - N8 - N9 - N10)

# O = Openness to Experience

big5 <- big5 %>%
  mutate(openness = 8 + O1 - O2 + O3 - O4 + O5 - O6 + O7 + O8 + O9 + O10)
