
library(dplyr)

#-------------------------------------------------------------------------------

mergeTrainingAndTestSets <- function() {

    # Load train data set into R
    X_train <- read.table("raw_data/train/X_train.txt");
    Y_train <- read.table("raw_data/train/y_train.txt");
    subject_train <- read.table("raw_data/train/subject_train.txt");

    # Load test data set into R
    X_test <- read.table("raw_data/test/X_test.txt");
    Y_test <- read.table("raw_data/test/y_test.txt");
    subject_test <- read.table("raw_data/test/subject_test.txt");

    # Merge train and test pairs
    X <- rbind(X_train, X_test);
    Y <- rbind(Y_train, Y_test);
    subject <- rbind(subject_train, subject_test);

    # Merge X, Y, and subjects
    cbind(X, Y, subject)
}

extractMeanAndStdFeatures <- function() {

    # Load features list into R
    features <- read.table("raw_data/features.txt")

    # Select rows where the second column is a mean() or std() feature
    features[which(features$V2 %in% grep("std()|mean()", features$V2, value = TRUE)), 1:2]
}

loadActivityLabels <- function() {

    # Load acitivity labels into R
    read.table("raw_data/activity_labels.txt")
}

applyActivityLabels <- function(meanAndStrData, activityLabels) {

    # For each label number, replace it with a string label in the data set
    for (i in activityLabels$V1) {
        meanAndStrData$V1.1[meanAndStrData$V1.1 == i] <- as.character(activityLabels$V2[i])
    }

    meanAndStrData
}

labelDatasetVariables <- function(dataset, meanAndStdFeaturesLabels) {

    # Contatenate features labels with activity and subject labels
    labels <- c(meanAndStdFeaturesLabels, "activity", "subject")
    # Apply new labels to datset variables
    colnames(dataset) <- labels
    # Return labeled dataset
    dataset
}

averageVariablesPerAcitivityAndSubject <- function(dataset) {

    tidyData <- dataset %>% group_by(activity, subject) %>% summarise_each(funs(mean))

}

#-------------------------------------------------------------------------------

# Step 1
mergedData <- mergeTrainingAndTestSets()

# Step 2
meanAndStdFeatures <- extractMeanAndStdFeatures()
meanAndStrData <- mergedData[c(meanAndStdFeatures$V1, 562, 563)]

# Step 3
activityLabels <- loadActivityLabels()
meanAndStrData <- applyActivityLabels(meanAndStrData, activityLabels)

# Step 4
meanAndStdFeaturesLabels <- as.character(meanAndStdFeatures$V2)
meanAndStrData <- labelDatasetVariables(meanAndStrData, meanAndStdFeaturesLabels)

# Step 5
tidyData <- averageVariablesPerAcitivityAndSubject(meanAndStrData)
print(summary(tidyData))
# Write tidy data set to a text file
write.table(tidyData, file="tidy_data.txt", row.name=FALSE)
