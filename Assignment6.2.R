#a)Is there any difference in fares by different class of tickets?
#use titanic dataset

titanicDf<- read.csv("C:/Users/arunabhl/Documents/MyRFiles/titanic3.csv")
boxplot(fare~pclass,data= titanicDf,
        main="Fares V/s Pclass",xlab="Fares",ylab="Class",col=topo.colors(3))


#b)Is there any association with Passenger class and gender?
#stacked bar chart

counts<-table(titanicDf$sex,titanicDf$pclass)
barplot(counts, main = "Distribution of Class by gender", xlab="Pclass", col=c("blue", "red"), legend = c("Female","Male"), names.arg = c("Pclass1st", "Pclass2nd","Pclass3rd"))

