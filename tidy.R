# Create the desired tidy dataset
#

activities <- c("LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS")

tidy_final <- data.frame()

for (subject in 1:30) {
    for (activity in activities) {
        c <- vector()
        for (col in 3:88) {
            c <- cbind( c, mean(X_final[(X_final$Subject == subject & X_final$Activity == activity), col]))
        }
        tidy_final <- rbind( tidy_final, 
                        data.frame(Subject = subject, 
                        Activity = activity
                        , c )
                        )
    }
}

tidy_selected_features <- read.table("./tidy_selected_features.txt")
names(tidy_final) <- tidy_selected_features[ ,2]

c <- vector()
for (col in 3:88) {
    c <- cbind( c, mean(X_final[(X_final$Subject == subject & X_final$Activity == activity), col]))
}