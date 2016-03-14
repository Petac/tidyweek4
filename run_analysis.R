##run_analysis.R
        library(dplyr)
        ##Read features
        feat<-read.csv("features.txt", sep=" ",header = FALSE )
        ##Read activity labels
        act<-read.csv("activity_labels.txt", sep=" ",header = FALSE )
        colnames(act)<-c("activityclass","activitytype")
        ##Read subject train
        subtrain<-read.csv("train/subject_train.txt", sep=" ",header = FALSE )
        colnames(subtrain)<-"subjectID"
        ##Read y_train
        ytrain<-read.csv("train/y_train.txt", sep=" ",header = FALSE )
        colnames(ytrain)<-"activityclass"
        ##cbind subtrain and ytrain
        train1<-cbind(ytrain,subtrain)
        ##merge activityclass
        d1<-merge(train1,act, by="activityclass", all.x = TRUE, sort=FALSE)      
        
        ##Read X_train
        xtrain<-read.table("train/X_train.txt", header = FALSE )
        colnames(xtrain)<-feat[,2]
        
        ##cbind activty and data
        train<-cbind(d1,xtrain)
                
        ##Read subject test
        subtest<-read.csv("test/subject_test.txt", sep=" ",header = FALSE )
        colnames(subtest)<-"subjectID"
        ##Read y_test
        ytest<-read.csv("test/y_test.txt", sep=" ",header = FALSE )
        colnames(ytest)<-"activityclass"
        ##cbind subtest and ytest
        test1<-cbind(ytest,subtest)
        ##merge activityclass
        d2<-merge(test1,act, by="activityclass", all.x = TRUE, sort=FALSE)
        
        ##Read X_test
        xtest<-read.table("test/X_test.txt", header = FALSE )
        colnames(xtest)<-feat[,2]
        
        ##cbind activity and data
        test<-cbind(d2,xtest)

        ##rowbind
        final1<-rbind(train,test)

        ##select only certain columns
        c1<-grep("mean", colnames(final1), ignore.case = TRUE, value =FALSE)
        c2<-grep("std", colnames(final1), ignore.case = TRUE, value =FALSE)
        final<-final1[,c(1,2,3,c1,c2)]
        
        ##dataset2
        p<-aggregate(final[,4:89], list(final$activityclass,final$subjectID,final$activitytype),mean)
        ##write file
        write.table(p,file="gettidy.txt",row.names=FALSE)
        