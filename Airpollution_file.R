setwd("~/Desktop/Airpoll/AirPollution")
library(tidyverse)
library(lubridate)
# loading data
air2.506 <- read.csv("2.506.csv")
air2.506 <- subset(air2.506, County.FIPS.Code == c(21,61,113))
air2.507 <- read.csv("2.507.csv")
air2.507 <- subset(air2.507, County.FIPS.Code == c(21,61,113))
air2.508 <- read.csv("2.508.csv")
air2.508 <- subset(air2.508, County.FIPS.Code == c(21,61,113))
air2.509 <- read.csv("2.509.csv")
air2.509 <- subset(air2.509, County.FIPS.Code == c(21,61,113))
air2.510 <- read.csv("2.510.csv")
air2.510 <- subset(air2.510, County.FIPS.Code == c(21,61,113))
air2.511 <- read.csv("2.511.csv")
air2.511 <- subset(air2.511, County.FIPS.Code == c(21,61,113))
air2.512 <- read.csv("2.512.csv")
air2.512 <- subset(air2.512, County.FIPS.Code == c(21,61,113))
air2.513 <- read.csv("2.513.csv")
air2.513 <- subset(air2.513, County.FIPS.Code == c(21,61,113))
air2.514 <- read.csv("2.514.csv")
air2.514 <- subset(air2.514, County.FIPS.Code == c(21,61,113))
air2.515 <- read.csv("2.515.csv")
air2.515 <- subset(air2.515, County.FIPS.Code == c(21,61,113))
air2.516 <- read.csv("2.516.csv")
air2.516 <- subset(air2.516, County.FIPS.Code == c(21,61,113))
air2.517 <- read.csv("2.517.csv")
air2.517 <- subset(air2.517, County.FIPS.Code == c(21,61,113))
air2.518 <- read.csv("2.518.csv")
air2.518 <- subset(air2.518, County.FIPS.Code == c(21,61,113))
air2.519 <- read.csv("2.519.csv")
air2.519 <- subset(air2.519, County.FIPS.Code == c(21,61,113))
air2.520 <- read.csv("2.520.csv")
air2.520 <- subset(air2.520, County.FIPS.Code == c(21,61,113))
air2.521 <- read.csv("2.521.csv")
air2.521 <- subset(air2.521, County.FIPS.Code == c(21,61,113))
air2.522 <- read.csv("2.522.csv")
air2.522 <- subset(air2.522, County.FIPS.Code == c(21,61,113))
air2.523 <- read.csv("2.523.csv")
air2.523 <- subset(air2.523, County.FIPS.Code == c(21,61,113))
air2.524 <- read.csv("2.524.csv")
air2.524 <- subset(air2.524, County.FIPS.Code == c(21,61,113))
air2.525 <- read.csv("2.525.csv")
air2.525 <- subset(air2.525, County.FIPS.Code == c(21,61,113))

air1006 <- read.csv("1006.csv")
air1006 <- subset(air1006, County.FIPS.Code == c(21,61,113))
air1007 <- read.csv("1007.csv")
air1007 <- subset(air1007, County.FIPS.Code == c(21,61,113))
air1008 <- read.csv("1008.csv")
air1008 <- subset(air1008, County.FIPS.Code == c(21,61,113))
air1009 <- read.csv("1009.csv")
air1009 <- subset(air1009, County.FIPS.Code == c(21,61,113))
air1010 <- read.csv("1010.csv")
air1010 <- subset(air1010, County.FIPS.Code == c(21,61,113))
air1011 <- read.csv("1011.csv")
air1011 <- subset(air1011, County.FIPS.Code == c(21,61,113))
air1012 <- read.csv("1012.csv")
air1012 <- subset(air1012, County.FIPS.Code == c(21,61,113))
air1013 <- read.csv("1013.csv")
air1013 <- subset(air1013, County.FIPS.Code == c(21,61,113))
air1014 <- read.csv("1014.csv")
air1014 <- subset(air1014, County.FIPS.Code == c(21,61,113))
air1015 <- read.csv("1015.csv")
air1015 <- subset(air1015, County.FIPS.Code == c(21,61,113))
air1016 <- read.csv("1016.csv")
air1016 <- subset(air1016, County.FIPS.Code == c(21,61,113))
air1017 <- read.csv("1017.csv")
air1017 <- subset(air1017, County.FIPS.Code == c(21,61,113))
air1018 <- read.csv("1018.csv")
air1018 <- subset(air1018, County.FIPS.Code == c(21,61,113))
air1019 <- read.csv("1019.csv")
air1019 <- subset(air1019, County.FIPS.Code == c(21,61,113))
air1020 <- read.csv("1020.csv")
air1020 <- subset(air1020, County.FIPS.Code == c(21,61,113))
air1021 <- read.csv("1021.csv")
air1021 <- subset(air1021, County.FIPS.Code == c(21,61,113))
air1022 <- read.csv("1022.csv")
air1022 <- subset(air1022, County.FIPS.Code == c(21,61,113))
air1023 <- read.csv("1023.csv")
air1023 <- subset(air1023, County.FIPS.Code == c(21,61,113))
air1024 <- read.csv("1024.csv")
air1024 <- subset(air1024, County.FIPS.Code == c(21,61,113))
air1025 <- read.csv("1025.csv")
air1025 <- subset(air1025, County.FIPS.Code == c(21,61,113))


# each pm dataset, creating year, month, day vars
airpm2.5 <- rbind(air2.506,air2.507,air2.508,air2.509,air2.510,air2.511,air2.512,air2.513,air2.514,air2.515,air2.516,air2.517,air2.518,air2.519,air2.520,air2.521,air2.522,air2.523,air2.524,air2.525)
airpm10 <- rbind(air1006,air1007,air1008,air1009,air1010,air1011,air1012,air1013,air1014,air1015,air1016,air1017,air1018,air1019,air1020,air1021,air1022,air1023,air1024,air1025)

airpm2.5$Date <- as.Date(airpm2.5$Date, "%m/%d/%Y")
airpm2.5$year <- year(ymd(airpm2.5$Date))
airpm2.5$month <- month(ymd(airpm2.5$Date))
airpm2.5$day <- day(ymd(airpm2.5$Date))

airpm10$Date <- as.Date(airpm10$Date, "%m/%d/%Y")
airpm10$year <- year(ymd(airpm10$Date))
airpm10$month <- month(ymd(airpm10$Date))
airpm10$day <- day(ymd(airpm10$Date))

# Now to try and make a silly var to make plotting over a year easier (month * 30.44 - 30.44 + day)
airpm2.5$toy <- airpm2.5$month*30.44-30.44+airpm2.5$day # I think this works
airpm10$toy <- airpm10$month*30.44-30.44+airpm10$day
airpm2.5guay[1056,]
# Plot time (because I'm rushed)
airpm2.5ponce <- subset(airpm2.5, County.FIPS.Code == 113)
airpm10ponce <- subset(airpm10, County.FIPS.Code == 113)

airpm2.5guay <- subset(airpm2.5, County.FIPS.Code == 61)
ggplot(airpm2.5guay) +
  geom_line(aes(x=toy, y=Daily.Mean.PM2.5.Concentration)) +
  facet_wrap(~year) # I don't know if I hate it, but it should at least have PM10 with it

airpm10guay <- subset(airpm10, County.FIPS.Code == 61)
ggplot(airpm10guay) +
  geom_line(aes(x=toy, y=Daily.Mean.PM10.Concentration)) +
  facet_wrap(~year) # a few holes in data

# now to do the same but with pms together
airpm2.5_2 <- airpm2.5[,-14]
airpm2.5_2$Daily.Mean.PM10.Concentration <- 0 #empty vector for merging
airpm10$Daily.Mean.PM2.5.Concentration <- 0
airpms <- rbind(airpm2.5_2, airpm10) # merge

ggplot(airpms, aes(x=toy)) +
  geom_line(aes(y=Daily.Mean.PM2.5.Concentration), color = "red", size = 0.3) +
  geom_line(aes(y=Daily.Mean.PM10.Concentration), color = "purple", size = 0.1, alpha = 0.3) +
  ylab("Particulate Matter") +
  xlab("Day of Year") +
  theme_classic() +
  facet_wrap(~year) #this looks ok, now to stratify 

airpms_guay <- subset(airpms, County.FIPS.Code == 61)
airpms_ponce <- subset(airpms, County.FIPS.Code == 113)
PM <- data.frame(a = "red", b = "purple")

ggplot(airpms_guay, aes(x=toy)) +
  geom_line(aes(y=Daily.Mean.PM2.5.Concentration), color = "red", size = 0.3) +
  geom_line(aes(y=Daily.Mean.PM10.Concentration), color = "purple", size = 0.1, alpha = 0.5) +
  geom_hline(yintercept = 25, color = "red", linetype='dotted', alpha = 1) +
  geom_hline(yintercept = 50, color = "purple", linetype='dotted', alpha = 1) +
  ylab("Particulate Matter (ug m-3)") +
  xlab("Day of Year") +
  theme_classic() +
  guides(fill = guide_legend(title = "Title")) +
  labs(title = "Guaynabo") +
  facet_wrap(~year)
?geom_hline
ggplot(airpms_ponce, aes(x=toy)) +
  geom_line(aes(y=Daily.Mean.PM2.5.Concentration), color = "red", size = 0.3) +
  geom_line(aes(y=Daily.Mean.PM10.Concentration), color = "purple", size = 0.1, alpha = 0.3) +
  geom_hline(yintercept = 25, color = "red", linetype='dotted', alpha = 1) +
  geom_hline(yintercept = 50, color = "purple", linetype='dotted', alpha = 1) +
  ylab("Particulate Matter (ug m-3)") +
  xlab("Day of Year") +
  theme_classic() +
  labs(title = "Ponce") +
  facet_wrap(~year)

# data summ. for the paper
# how many data points per year per pollutant per site

by(airpm2.5guay$Daily.Mean.PM2.5.Concentration, airpm2.5guay$year, summary) #2018, 2010, 2007
by(airpm10guay$Daily.Mean.PM10.Concentration, airpm10guay$year, summary) #all but 2017, 2018, 2019

by(airpm2.5ponce$Daily.Mean.PM2.5.Concentration, airpm2.5ponce$year, summary) #2017, 2018, 2019, 2024
by(airpm10ponce$Daily.Mean.PM10.Concentration, airpm10ponce$year, summary) #all but 2024 and 2025

# so now I just need the sample sizes for each and the number of instances above for the cases

by(airpm2.5guay, airpm2.5guay$year, count)
by(airpm10guay, airpm10guay$year, count)

by(airpm2.5ponce, airpm2.5ponce$year, count)
by(airpm10ponce, airpm10ponce$year, count)

# now to get the number of exceedings in the years that exceed
first <- airpm2.5guay$Daily.Mean.PM2.5.Concentration > 25
ind1 <- which(first)
airpm2.5guay[ind1,]

second <- airpm10guay$Daily.Mean.PM10.Concentration > 50
ind2 <- which(second)
table(airpm10guay$year[ind2])


third <- airpm2.5ponce$Daily.Mean.PM2.5.Concentration > 25
ind3 <- which(third)
airpm2.5ponce[ind3,]

fourth <- airpm10ponce$Daily.Mean.PM10.Concentration > 50
ind4 <- which(fourth)
table(airpm10ponce$year[ind4])

# I did the normalization of this using a calculator
# Next time I should try and make this a matrix in R
# Then I could even just copy and paste it 

# now for total n per pm and place
by(airpm2.5, airpm2.5$County, count) #first ignored, it's Bayamon
by(airpm10, airpm10$County, count)
