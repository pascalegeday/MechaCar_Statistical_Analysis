library(dplyr)

mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_table)
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=mechacar_table))


suspension_coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary<-suspension_coil_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI),Standard_deviation_PSI=sd(PSI))
lot_summary<-suspension_coil_table%>% group_by(Manufacturing_Lot)%>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI),Standard_deviation_PSI=sd(PSI))
                           
t.test(suspension_coil_table$PSI,mu=1500)

Lot1<-subset(suspension_coil_table,Manufacturing_Lot=="Lot1")
Lot2<-subset(suspension_coil_table,Manufacturing_Lot=="Lot2")
Lot3<-subset(suspension_coil_table,Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)

