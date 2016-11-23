mvt = read.csv("mvtWeek1.csv")
# Finding Structure of the data set
str(mvt)
# Summary for the data set
summary(mvt)
max(mvt$ID)
min(mvt$Beat)
#observations have value TRUE in the Arrest variable
table(mvt$Arrest)
#How many observations have a LocationDescription value of ALLEY?
table(mvt$LocationDescription)
mvt$Date[1000]

#Converting the Data Characters into a Date Object in R
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert

#In which month did the fewest motor vehicle thefts occur?
min(table(mvt$Month))
#On which weekday did the most motor vehicle thefts occur?
table(mvt$Weekday)
#Which month has the largest number of motor vehicle thefts for which an arrest was made?
table(mvt$Month,mvt$Arrest)

#Visualizing Data in R
hist(mvt$Date, breaks = 100)

#BOXPLOT
boxplot(mvt$Date~mvt$Arrest)

table(mvt$Arrest,mvt$Year)
1212/(1212+18517)

#Which locations are the top five locations for motor vehicle thefts, excluding the "Other" category? 
sort(table(mvt$LocationDescription))
Top5 = subset(mvt,LocationDescription=="STREET"|LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)"|
                LocationDescription=="ALLEY"|LocationDescription=="GAS STATION"|
                LocationDescription=="DRIVEWAY - RESIDENTIAL")
str(Top5)

Top5$LocationDescription = factor(Top5$LocationDescription)
str(Top5)

table(Top5$LocationDescription,Top5$Weekday)
table(Top5$LocationDescription,Top5$Weekday)
