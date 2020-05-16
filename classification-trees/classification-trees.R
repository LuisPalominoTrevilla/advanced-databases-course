# Your goal is to generalize

head(iris)
summary(iris)

# Split the dataset between the test data and the training data
sample(150, size = 10, replace = F)

ind <- sample(x=c(1,2), size = nrow(iris), replace = T, prob = c(.8, .2))

ind
iris$Species
iris[iris$Species == "setosa",]

ind==2

training.set <- iris[ind==1,]
test.set <- iris[ind==2,]


nrow(training.set)
nrow(test.set)
str(training.set)
summary(training.set)

# install.packages('party')
# install.packages('rpart')
library('party')
library('rpart')
names(iris)
version
formula.1 <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width

# Check that class is formula
class(formula.1)

iris.ctree <- ctree(formula = formula.1, data = training.set)
class(iris.ctree)

# These are the rules
print(iris.ctree)
cor(iris[,-5])

plot(iris.ctree)
attributes(iris.ctree)
getwd()
setwd("/Users/luisp/Documents/advanced-databases-course/classification-trees")
?png
png(filename = "cart_iris_tec20.jpg", width = 1500, height = 1000)
plot(iris.ctree)
dev.off()


# Simple plot
plot(iris.ctree, type="simple")
test.pred <- predict(iris.ctree, newdata = test.set)
test.pred
table(test.pred, test.set$Species)
names(iris)

my.flower <- data.frame(Sepal.Length = 2000,
                        Sepal.Width = 1000000,
                        Petal.Length = 1.5,
                        Petal.Width = 500)
test.pred <- predict(iris.ctree, newdata = my.flower)
test.pred

my.other.flower <- data.frame(Sepal.Length = 1000,
                        Sepal.Width = 5000,
                        Petal.Length = 2000,
                        Petal.Width = 500)
test.pred <- predict(iris.ctree, newdata = my.other.flower)
test.pred
