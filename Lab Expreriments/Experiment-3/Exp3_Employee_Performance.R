library(ggplot2)

emp<-data.frame(
ID=1:5,
Dept=c("Sales","HR","Marketing","Sales","HR"),
Years=c(5,3,7,4,2),
Score=c(85,92,78,90,76)
)

ggplot(emp,aes(Years,Score))+geom_line()+geom_point(size=3)+labs(title="Performance Trend",x="Years of Service",y="Performance Score")
ggplot(emp,aes(Dept))+geom_bar(fill="orange")+labs(title="Employees by Department")
ggplot(emp,aes(Years,Score))+geom_point(size=4,color="blue")+labs(title="Years vs Performance")
