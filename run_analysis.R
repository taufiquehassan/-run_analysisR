
setwd("D:/Courseera Courses/Getting and cleaning data/UCI HAR Dataset/train/Inertial Signals")
#Set Dir for the train data

file_list1 <- list.files()

for (file in file_list1){
  
  if (!exists("dataset_train")){
    dataset_train <- data.table(file,header=TRUE, sep="\t", all=T)
  }
  
  if (exists("dataset_train")){
    temp_dataset <-data.table(file,header=TRUE, sep="\t", all=T)
    dataset_train<-cbind(dataset_train, temp_dataset)
    rm(temp_dataset)
  }
  
}

setwd("D:/Courseera Courses/Getting and cleaning data/UCI HAR Dataset/test/Inertial Signals")
#Set Dir for the test data


file_list2 <- list.files()

for (file in file_list2){
  
  if (!exists("dataset_test")){
    dataset_test <- data.table(file, sep="\t", all=T)
  }
  
  if (exists("dataset_test")){
    temp_dataset <-data.table(file, sep="\t", all=T)
    dataset_test<-cbind(dataset_test, temp_dataset)
    rm(temp_dataset)
  }
    
}