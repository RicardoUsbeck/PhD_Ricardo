
pdf(paste("runtimeVSentities.pdf"),width=20,height=10);


agdistis<-read.csv("Test_reuters.xml_2_DBpedia.tsv",header=TRUE,sep="\t");

boxplot(aida~entities*agdistis,data=agdistis,outline=FALSE,ylab="time",xlab="#entities");

legend(0,25000,c("AGDISTIS","AIDA"),col=c("red","blue"),lty=1,lwd=1.4);

dev.off();
