library(ggplot2)

web<-data.frame(
Date=as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05")),
Views=c(1500,1600,1400,1650,1800),
CTR=c(2.3,2.7,2.0,2.4,2.6),
Likes=c(100,120,90,130,140),
Shares=c(40,45,35,50,55),
Comments=c(20,25,18,22,28)
)

ggplot(web,aes(Date,Views))+geom_line(color="blue")+geom_point()+labs(title="Daily Page Views",x="Date",y="Page Views")
ggplot(web,aes(reorder(Date,CTR),CTR))+geom_bar(stat="identity",fill="green")+labs(title="Top Click Through Rates",x="Date",y="CTR")

interaction<-data.frame(
Date=rep(web$Date,3),
Value=c(web$Likes,web$Shares,web$Comments),
Type=rep(c("Likes","Shares","Comments"),each=5)
)

ggplot(interaction,aes(Date,Value,fill=Type))+geom_area()+labs(title="User Interactions",x="Date",y="Count")
