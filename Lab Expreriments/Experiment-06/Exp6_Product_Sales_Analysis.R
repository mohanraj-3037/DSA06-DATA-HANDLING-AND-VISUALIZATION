library(ggplot2)

sales<-data.frame(
Product=c("Product A","Product B","Product C"),
January=c(2000,1500,1200),
February=c(2200,1800,1400),
March=c(2400,1600,1100)
)

long<-data.frame(
Month=rep(c("January","February","March"),each=3),
Product=rep(sales$Product,3),
Sales=c(sales$January,sales$February,sales$March)
)

ggplot(long,aes(Month,Sales,fill=Product))+geom_bar(stat="identity",position="dodge")+labs(title="Quarterly Product Sales",x="Month",y="Sales")
ggplot(long,aes(Month,Sales,fill=Product,group=Product))+geom_area()
print(sales)
