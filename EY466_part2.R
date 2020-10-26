install.packages("readxl")
library(readxl)
EY_2 <- read_excel("~/fall2020/Downloads EY Case Fall 2020.xlsx")
View(EY_2)

EY_2 <- EY_2[-c(1,2), ] 
colnames(EY_2)
names(EY_2)[1] <- "Airport"
names(EY_2)[2] <- "City"
names(EY_2)[3] <- "Month"
names(EY_2)[4] <- "CarrierID"
names(EY_2)[5] <- "No_of_Flights"
EY_2 <- EY_2[-c(1), ] 

library(readr)
Carrier <- read_csv("~/fall2020/Hackathon Data File 2 (2).txt")
View(Carrier)
library(dplyr)
library(tidyr)
Carrier <- data.frame(Carrier)

colnames(Carrier)

View(CID)
CID<-Carrier %>% separate(`CarrierID.Carrier`, c("CarrierID", "Carrier"), "\\|", extra = "merge")

total <- merge(EY_2,CID,by="CarrierID")
View(total)
is.na(total)
library(xlsx)
write.xlsx(total, "~/fall2020/Ey2.xlsx")

#1
american <- filter(total, CarrierID == "14F")
united <- filter(total, CarrierID == "56Q")
sw <- filter(total, CarrierID == "WN3")
str(american)
american$No_of_Flights <- as.numeric(american$No_of_Flights)
united$No_of_Flights <- as.numeric(united$No_of_Flights)
sw$No_of_Flights <- as.numeric(sw$No_of_Flights)
max(american$No_of_Flights)
max(united$No_of_Flights)
max(sw$No_of_Flights,na.rm = TRUE)
a<-filter(american, No_of_Flights == 8400)
b<-filter(united, No_of_Flights == 7160)
c<-filter(sw, No_of_Flights == 3710)
fst <- rbind(a,b,c)
str(fst)
library(ggplot2)
ggplot(fst, aes(x=Carrier, y=No_of_Flights)) +
  geom_bar(stat = "identity",color="blue")
ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + 
  geom_bar( ) +
  scale_fill_hue(c = 60)+
  theme(legend.position="none")

my_bar <- barplot(fst$No_of_Flights, names.arg=fst$Carrier, 
                  col=c(rgb(0.3,0.1,0.4,0.6) , rgb(0.3,0.5,0.4,0.6) , rgb(0.3,0.9,0.4,0.6) ,  rgb(0.3,0.9,0.4,0.6)) , 
                  main="Highest Number of Flights in Each Airline" )
text(my_bar, fst$No_of_Flights-150, paste(fst$No_of_Flights)) 
#2
total$No_of_Flights <- as.numeric(total$No_of_Flights)
max(total$No_of_Flights, na.rm = TRUE)
unique(total$Airport)

sec <- aggregate(total$No_of_Flights, by=list(Airport=total$Airport), FUN=sum, na.rm = TRUE)
library(RColorBrewer)
cols <- brewer.pal(8, "Spectral")
sec_plot <- barplot(sec$x, names.arg=sec$Airport, 
                   col=cols,
                    main="Number of flights in Airports" )
text(sec_plot, sec$x-1150, paste(sec$x)) 
#3
thd <- aggregate(total$No_of_Flights, by=list(Month=total$Month), FUN=sum, na.rm = TRUE)
thd$Month<-as.numeric(thd$Month)
thd <- thd[order(thd$Month),]
thd_plot <-plot(thd$Month,thd$x,
                    col=c( rgb(0.8,0.2,0.8,0.7)),
                    ylim= c(40000, 55000),
                    main="Number of flights Each Month", type = "l", lwd =2)

thda <- aggregate(american$No_of_Flights, by=list(Month=american$Month), FUN=sum, na.rm = TRUE)
thda$Month<-as.numeric(thda$Month)
thda <- thda[order(thda$Month),]

thdu <- aggregate(united$No_of_Flights, by=list(Month=united$Month), FUN=sum, na.rm = TRUE)
thdu$Month<-as.numeric(thdu$Month)
thdu <- thdu[order(thdu$Month),]

thds <- aggregate(sw$No_of_Flights, by=list(Month=sw$Month), FUN=sum, na.rm = TRUE)
thds$Month<-as.numeric(thds$Month)
thds <- thds[order(thds$Month),]

plot(thda$Month,thda$x, type="l", col="#66C2A5" , lwd=2, xlab="Month", ylab="Number of Flight",ylim = c(6000,27000))
lines(thdu$Month, thdu$x, col="#FDAE61", lwd=2)
lines(thds$Month, thds$x, col="#F46D43", lwd=2)
title("Number of flights Each Month (by Carrier)")

legend(10.5,15000, 
       legend = c("American", "United","SouthWest"), 
       col = c("#66C2A5", "#FDAE61",
               "#F46D43"), lty = 1, inset = 5)
#5
unique(total$City)
sec
21436*0.2
55076*0.4
16887*0.5
d <-data.frame(City=c("New York","LA","Seattle"),Number_of_Flight=c(4287.2,22030.4,8443.5))
barplot(d$Number_of_Flight,names.arg=d$City,
        col=cols,
        main="Number of flights in Cities(Covid)" )
