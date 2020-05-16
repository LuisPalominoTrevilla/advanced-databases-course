data("bodyfat", package="TH.data")
?bodyfat

head(bodyfat)
summary(bodyfat)

names(bodyfat)

ind <- sample(x=c(1,2), size = nrow(bodyfat), replace = T, prob = c(.8, .2))

training.set <- bodyfat[ind==1,]
test.set <- bodyfat[ind==2,]

library('party')
library('rpart')
names(bodyfat)

# Formula 1

formula.1 <- DEXfat ~ age + waistcirc + hipcirc + elbowbreadth + kneebreadth + anthro3a + anthro3b + anthro3c + anthro4
class(formula.1)

bodyfat.ctree <- ctree(formula = formula.1, data = training.set)
class(bodyfat.ctree)

plot(bodyfat.ctree)
attributes(bodyfat.ctree)
plot(bodyfat.ctree, type = "simple")

setwd("/Users/luisp/Documents/advanced-databases-course/classification-trees")
getwd()
dev <- png(filename = "cart_bodyfat1_tec20.jpg", width = 1500, height = 1000)
plot(bodyfat.ctree)
dev.off()

# Formula 2

formula.2 <- DEXfat ~ age + waistcirc + hipcirc + elbowbreadth + kneebreadth

bodyfat.ctree.2 <- ctree(formula = formula.2, data = training.set)

plot(bodyfat.ctree.2)

setwd("/Users/luisp/Documents/advanced-databases-course/classification-trees")
getwd()
dev <- png(filename = "cart_bodyfat2_tec20.jpg", width = 1500, height = 1000)
plot(bodyfat.ctree.2)
dev.off()

