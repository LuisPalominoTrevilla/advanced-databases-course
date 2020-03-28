students.full.data <- read.csv("students.full.data.csv", stringsAsFactors = T)
students.full.data

?read.csv
students.complete <- students.full.data[complete.cases(students.full.data),]

str(students.complete)
students.complete$degree <- as.numeric(students.complete$highest.education.degree)
students.complete
mi.students <- students.complete[,c("age", "degree")]
mi.students

wss <- vector()
for (i in 1:9) wss[i] <- sum(kmeans(mi.students, centers = i)$withinss)

# PLOT 1
plot(1:10, wss, type="b", xlab="Numero de clusters", ylab="Error standard")

set.seed(1234)
km.st <- kmeans(mi.students, 4)
attributes(km.st)
km.st$cluster

# PLOT cluster
plot(mi.students, col=km.st$cluster)
points(km.st$centers[, c("age", "degree")], col = 1:3, pch = 2, cex = 3)
