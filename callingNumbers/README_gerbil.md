
https://sourceforge.net/projects/hsqldb/files/


REMEMBER delete gerbil.db.lck file

java -cp hsqldb-2.3.4/hsqldb/lib/hsqldb.jar org.hsqldb.util.DatabaseManagerSwing --url jdbc:hsqldb:file:/Users/ricardousbeck/Dropbox/PhD_Ricardo/callingNumbers/gerbil_database_19_10_2016/gerbil.db --driver org.hsqldb.jdbc.JDBCDriver 

20 Oct 2016
Getting number of experiments for GERBIL 

SELECT COUNT(DISTINCT ID) FROM "PUBLIC"."EXPERIMENTS" 
> 3288

SELECT COUNT(DISTINCT TASKID) FROM "PUBLIC"."EXPERIMENTS" 
> 17799

SELECT COUNT(TASKID) FROM "PUBLIC"."EXPERIMENTS" 
> 24341

Getting number of experiments for GERBIL QA

java -cp hsqldb-2.3.4/hsqldb/lib/hsqldb.jar org.hsqldb.util.DatabaseManagerSwing --url jdbc:hsqldb:file:/Users/ricardousbeck/Dropbox/PhD_Ricardo/callingNumbers/gerbil_qa_database_19_10_2016/gerbil.db --driver org.hsqldb.jdbc.JDBCDriver 

SELECT COUNT(DISTINCT ID) FROM "PUBLIC"."EXPERIMENTS" 
> 85

SELECT COUNT(DISTINCT ID) FROM "PUBLIC"."EXPERIMENTS" 
> 943

SELECT COUNT(TASKID) FROM "PUBLIC"."EXPERIMENTS" 
> 986
