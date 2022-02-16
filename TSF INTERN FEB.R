analysis <- read.csv("C:/Users/User/Documents/tsf.csv",
                     stringsAsFactors = FALSE, header = TRUE )
analysis
View(analysis)
Hours<-analysis$Hours
Scores<-analysis$Scores
plot(Hours,Scores)
plot(Hours,Scores,pch=10,cex=1,col='red',main='Hours v/s Scores',xlab = 'Hours'
     ,ylab = 'Scores',xlim = c(0,10), ylim = c(0,100))
LM<-lm(Scores~Hours)
LM
summary(LM)
abline(LM)
abline(LM,col='green',cex=4)
coef(LM)
#What will be the predicted score if a student studies for 9.25 hours a day?
score<-data.frame(Hours=9.25)
predict(LM,score)
summary(analysis)