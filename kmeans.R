iris
?iris
str(iris)
head(iris)
tail(iris)
summary(iris)
colnames(iris)
# Get all rows, except column 5
mi.iris <- iris[,-5]
# Get all rows, and 1-4 columns
mi.iris <- iris[,1:4]
# Best approach, selecting desired columns
mi.iris <- iris[,c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]

wss <- vector()
for (i in 1:15) wss[i] <- sum(kmeans(mi.iris, centers = i)$withinss)

# PLOT 1
plot(1:15, wss, type="b", xlab="Numero de clusters", ylab="Error standard")

Array.1 = c(1,2,3)
Array.2 = c(10,100, 2)
Array.1 + Array.2

wss

set.seed(1234)
kmeans.3 <- kmeans(mi.iris, 3)
attributes(kmeans.3)
kmeans.3$cluster
table(kmeans.3$cluster, iris$Species)

# PLOT 2
?plot
plot(mi.iris[,c("Petal.Length", "Petal.Width")], col =kmeans.3$cluster)
kmeans.3$centers

kmeans.3$size
points(kmeans.3$centers[, c("Petal.Length", "Petal.Width")], col = 1:3, pch = 2, cex = 3)

# train with two dimensions

kmeans.3 <- kmeans(mi.iris[,c("Petal.Length", "Petal.Width")], 3)

attributes(kmeans.3)
kmeans.3$centers

kmeans.3 <- kmeans(mi.iris[,c("Sepal.Length", "Sepal.Width")], 3)

# PLOT 3
plot(mi.iris[,c("Sepal.Length", "Sepal.Width")], col =kmeans.3$cluster)
points(kmeans.3$centers[, c("Sepal.Length", "Sepal.Width")], col = 1:3, pch = 2, cex = 3)

