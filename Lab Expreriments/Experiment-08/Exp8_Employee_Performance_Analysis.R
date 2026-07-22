library(ggplot2)

emp<-data.frame(
ID=1:3,
Department=c("Sales","HR","Marketing"),
Years=c(5,3,7),
Score=c(85,92,78)
)

ggplot(emp,aes(Years,Score,group=1))+geom_line()+geom_point(size=3)+labs(title="Employee Performance",x="Years of Service",y="Performance Score")
ggplot(emp,aes(Department))+geom_bar(fill="steelblue")+labs(title="Department Distribution",x="Department",y="Employees")
print(emp)
