pdf("time.pdf",width=15,height=10)    
par(cex=1.25)
par(mar=c(2,2,2,2)) 

barplot(c(c(5,1),c(3,2),c(2,2),c(1,1),c(1,1)), ylab="Time needed", col=c("white","grey"), beside=TRUE, yaxt="n",ylim=c(0,1.1*5),legend=c("Time needed without GERBIL","Time needed within GERBIL"),,space=c(0.2,0,0.2,0,0.2,0,0.2,0,0.2,0))
axis(2,labels=c("1h - 2h","2h - 4h","4h - 8h","8h - 16h","Don't know"),at = c(1,2,3,4,5))

dev.off()



data <- read.csv("survey.csv", header=TRUE)

without <- c(1,1,3,5,2)
with <- c(1,1,2,1,2)
data<-table(without,with)
plot(without,with,xlab="Time needed before GERBIL",ylab="Time needed with GERBIL",xaxt="n",yaxt="n",ylim=c(1,3))
axis(1,labels=c("1h - 2h","2h - 4h","4h - 8h","8h - 16h","I don't know"),at = c(1,2,3,4,5))
axis(2,labels=c("1h - 2h","2h - 4h","4h - 8h","8h - 16h","I don't know"),at = c(1,2,3,4,5))
