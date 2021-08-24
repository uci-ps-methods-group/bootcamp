library(ggplot2) # explain base verses packages

pointlow <- c(3,5,6,8,9,1,4) # Make a vector by hand, objects and simple functions

pointhigh <- sample(10:20,7) # More complex functions with arguments

points <- c(pointlow,pointhigh) # data manipulation

points<-as.data.frame(points)

# Non numeric objects

height <- c("short","short","short","short","short","short","short","tall","tall","tall","tall","tall","tall","tall") 

height <- c(rep("short", 7),rep("tall", 7))

# data manipulation
hight<- as.data.frame(hight) 
bball<-cbind(points,hight)
View(bball)


#Graphing
boxplot(points~hight, data = bball) 
ggplot(bball, aes(x=hight, y=points, fill=hight)) +
  geom_boxplot()


t.test(points~hight, data=bball)
mod.0 <-lm(points~hight, data=bball)
summary(mod.0)
