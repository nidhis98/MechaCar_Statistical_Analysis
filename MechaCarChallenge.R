install.packages("dplyr")
CarData <- read.csv("C:\\Users\19052\\OneDrive\\Desktop\\Class\\MechaCar_Statistical_Analysis\\R_Analysis\\01_Demo\\MechaCar_mpg.csv", header=TRUE, stringsAsFactors = FALSE)
CarData <- read.csv("C:\\Users\\19052\\OneDrive\\Desktop\\Class\\MechaCar_Statistical_Analysis\\R_Analysis\\01_Demo\\MechaCar_mpg.csv",header = TRUE, stringsAsFactors = FALSE)
View(CarData)
lm(mp~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=CarData)
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=CarData)
summary(mecha_lm)

SuspensionData <- read.csv("C:\\Users\\19052\\OneDrive\\Desktop\\Class\\MechaCar_Statistical_Analysis\\R_Analysis\\01_Demo\\Suspension_coil.csv",header=TRUE, stringsAsFactors = FALSE)
total_summary <- SuspensionData %>% summarize(avg_PSI=mean(PSI),median_PSI=median(PSI),var_PSI=var(PSI), sd_PSI=sd(PSI))
library(dplyr)
SuspensionData <- read.csv("C:\\Users\\19052\\OneDrive\\Desktop\\Class\\MechaCar_Statistical_Analysis\\R_Analysis\\01_Demo\\Suspension_coil.csv",header=TRUE, stringsAsFactors = FALSE)
total_summary <- SuspensionData %>% summarize(avg_PSI=mean(PSI),median_PSI=median(PSI),var_PSI=var(PSI), sd_PSI=sd(PSI))
View(total_summary)
lot_summary <- SuspensionData %>% group_by(Manufacturing_Lot) %>% summarize(avg_PSI=mean(PSI),median_PSI=median(PSI),var_PSI=var(PSI), sd_PSI=sd(PSI))
View(lot_summary)
t.test(SuspensionData$PSI,mu = 1500)  
t.test(subset(SuspensionData, SuspensionData$Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(SuspensionData, SuspensionData$Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(SuspensionData, SuspensionData$Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
