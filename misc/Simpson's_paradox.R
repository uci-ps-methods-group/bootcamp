



X1<-rnorm(50, 5, .8)
e1<-rnorm(50, 0, 2)

X2<-rnorm(50, 3.44, .8)
e2<-rnorm(50, 0, 2)

Y1<-rep(NA, 50)
Y2<-rep(NA, 50)

for (i in 1:50){
  Y1[i]<- 10 + (3*X1[i]) +e1[i]
  Y2[i]<- 20 + (3*X2[i]) +e2[i]
}

x<-c(X1,X2)
y<-c(Y1,Y2)
f<-c(rep("l1",50),rep("l2",50))

data<-as.data.frame(cbind(y,x,f))
data$y<-as.numeric(data$y)
data$x<-as.numeric(data$x)

ggplot(data = data, aes(x = x, y = y)) +
  geom_point()   +
  stat_smooth(method = lm) +
  labs(title = "")

ggplot(data = data, aes(x = x, y = y)) + 
  geom_point()  + aes(colour = f)  +
  stat_smooth(method = lm) +
  theme(legend.position = "right") +
  labs(title = "")
