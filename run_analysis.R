## 1. MERGE THE TRAINING AND TEST SETS TO CREATE ONE DATA SET
# Reading activity labels

# Read train and test data
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Join training and tets Xs and ys
fin_train <- cbind(subject_train, ytrain, Xtrain)
fin_test <- cbind(subject_test, ytest, Xtest)

# Combine training and test sets
fin_X <- rbind(fin_train,fin_test)
fin_X <- fin_X[order(fin_X$V2),]
fin_y <- fin_X[2]
colnames(fin_y) <- c("Activity")
fin_subject <- fin_X[1]
colnames(fin_subject) <- c("SubjectID")
combinedData <- fin_X
fin_X <- fin_X[3:dim(fin_X)[2]]

remove(Xtrain,Xtest,ytrain,ytest,fin_train,fin_test,subject_test,subject_train)

## 2. EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND
## STANDARD DEVIATION FOR EACH MEASUREMENT.
feat <- read.table("UCI HAR Dataset/features.txt")
colnames(fin_X) <- feat$V2
colnames(combinedData)<- c("SubjectID","Activity",feat$V2)
findMeanStd <- combinedData[grepl("-mean()-", feat$V2, fixed = TRUE)|
                               grepl("-std()-", feat$V2, fixed =TRUE)]

remove(feat)

## 3. USES DESCRIPTIVE ACTIVITY NAMES TO NAME THE
## ACTIVITIES IN THE DATA SET
# Read the activity_labels data
labData <- read.table("UCI HAR Dataset/activity_labels.txt")
# Set column names
colnames(labData) <- c("Code","Label")
# Find and replace each activity code with the corresponding label
for (i in 1:dim(fin_y)[1]) {
    combinedData$Activity[i] =  labData$Label[which(labData$Code==combinedData$Activity[i])]
    fin_y$Activity[i] = labData$Label[which(labData$Code==fin_y$Activity[i])]
}

remove(i)

## 4. APPROPRIATELY LABELS THE DATA SET WITH
## DESCRIPTIVE VARIABLE NAMES
z <- colnames(findMeanStd)
expandName<- function(x){
    if (startsWith(x,"t")){
        x<-sub("t","Time",x)
    }
    else if (startsWith(x,"f")){
        x<-sub("f","Frequency", x)
    }
    else {
        x <- sub("angle","Angle",x)
    }
}
z <- sapply(z,expandName)
colnames(findMeanStd) <- z
remove(z)

## 5. FROM THE DATA SET IN STEP 4, CREATE A SECOND, INDEPENDENT
## TIDY DATASET WITH THE AVERAGE OF EACH VARIABLE FOR EACH
## ACTIVITY AND EACH SUBJECT.
#combined_fin <- cbind(fin_subject, fin_y, fin_X)
newGen <- function(x, subj, act){
    z <- subset(x, x[1]==subj)
    z <- subset(z, z[2] == ac)
    meanstd <- colMeans(z[3:dim(z)[2]])
    return(meanstd)
}

new_fin <- data.frame()
for (subj in unique(findMeanStd$SubjectID)){
    for (ac in unique(findMeanStd$Activity)){
        tmp <- c(subj, ac, newGen(findMeanStd, subj, act))
        new_fin <- rbind(new_fin, tmp)
    }
}
for (i in 1:dim(findMeanStd)[1]) {
    findMeanStd$Activity[i] =  labData$Label[which(labData$Code==findMeanStd$Activity[i])]
}
colnames(new_fin) <- c(colnames(findMeanStd[1:2]), paste0("Average_Of_",colnames(findMeanStd)[3:dim(findMeanStd)[2]]))

write.table(new_fin,file="tidyData.txt")
