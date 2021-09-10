#Making CCES for boot camp

cces_2016 <- read.csv("~/Desktop/CCES copy.csv")


#gender

cces_2016$gender<- cces_2016$female
cces_2016$gender[cces_2016$gender == "Male"] <- "Man"
cces_2016$gender[cces_2016$gender == "Female"] <- "Woman"


#party

cces_2016$partyid_3 <- NA
cces_2016$partyid_3[cces_2016$partyid > 0] <- -1
cces_2016$partyid_3[cces_2016$partyid == 0] <- 0
cces_2016$partyid_3[cces_2016$partyid < 0] <- 1

cces_2016<-cces_2016[,-c(1,4,12)]

write.csv(cces_2016, "cces_2016.csv")
