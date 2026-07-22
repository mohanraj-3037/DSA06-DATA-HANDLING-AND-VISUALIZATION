library(ggplot2)

inventory<-data.frame(
Product=c("Product A","Product B","Product C"),
Quantity=c(250,175,300),
Price=c(20,15,18),
Category=c("Category 1","Category 1","Category 2")
)

ggplot(inventory,aes(Product,Quantity,fill=Product))+geom_bar(stat="identity")+labs(title="Inventory Quantity",x="Product",y="Quantity")
ggplot(inventory,aes(Category,Quantity,fill=Product))+geom_bar(stat="identity")+labs(title="Inventory by Category")
print(inventory)
