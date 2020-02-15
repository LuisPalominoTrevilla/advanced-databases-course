# Introduction to R

# primary types
var.logical <- T | F | TRUE | FALSE
var.logical
class(var.logical)

var.character <- "Luis"
"Alberto" -> var.x

var.integer <- 5L
class(var.integer)

var.numeric <- 4.8
class(var.numeric)

?complex
var.complex <- complex(real = 10, imaginary = 9)
var.complex

# arrays (1 based index)
vec.1 <- c(1,2,3,4,7)
vec.1[5]
vec.1[0] # Type of the array
vec.1[-1]
vec.2 <- c(1,0,1,0,1,10000,-1232)
vec.3 <- as.logical(vec.2)
vec.4 <- c(var.logical, var.character,var.complex,var.numeric,var.integer)
vec.5 <- c("100", "200", "car")
vec.6 <- as.numeric(vec.5) # car gets parsed to NA

vec.7 <- 1:100
vec.7 + 1
vec.8 <- 1:10
vec.9 <- 1:5
vec.8 + vec.9

# matrix
?matrix
mtx.1 <- matrix(data = 1:100, nrow = 10, ncol = 10)
mtx.1
mtx.2 <- matrix(data = 1:100, nrow = 10, ncol = 10, byrow = T)
mtx.2
mtx.1 == mtx.2 # Diagonal full of trues
mtx.1 == t(mtx.2) # Matrix full of trues

# lists
?list
list.1 <- list(number = var.numeric, integer = var.integer, char = var.character, logical = var.logical, imaginary = var.complex)
list.1$imaginary
list.1$number
list.1[[1]]
list.1[["logical"]]
list.1

# class info

info.luisp <- data.frame(
  name = "luis",
  lastname = "palomino trevilla",
  age = 22,
  zipcode = 45050,
  highest.education.degree = "bachelors",
  favourite.color = "blue",
  significant.other = F,
  music.genre = "alternate",
  favourite.book = "frankenstein",
  favourite.saga = "pirates of the caribean",
  semester = 8,
  luckynumber = 14,
  soccer.team = "real madrid",
  nationality = "mexican",
  number.siblings = 3,
  height = 1.81
)

info.David <- data.frame(
  name = "david",
  lastname = "perez alvarez",
  age = 20,
  zipcode = 45019,
  highest.education.degree = "profesional",
  favourite.color = "blue",
  significant.other = T,
  music.genre = "electro",
  favourite.book = "ots",
  favourite.saga = "hunger games",
  semester = 6,
  luckynumber = 7,
  soccer.team = "chivas",
  nationality = "mexican",
  number.siblings = 2,
  height = 1.74
)

info.hector <- data.frame(
  name = "hector",
  lastname = "herrera",
  age = 21,
  zipcode = 45200,
  highest.education.degree = "phd",
  favourite.color = "orange",
  significant.other = T,
  music.genre = "rock",
  favourite.book = NA,
  favourite.saga = "star wars",
  semester = 6,
  luckynumber = 1,
  soccer.team = "tacos",
  nationality = "mexican",
  number.siblings = 2,
  height = 1.80
)

info.marcus <- data.frame(
  name="marcus",
  lastname="newman",
  age=20,
  zipcode=1337,
  highest.education.degree="bachelor",
  favourite.color="pink",
  significant.other=F,
  music.genre="white noise",
  favourite.book="foo",
  favourite.saga="bar",
  semester=6,
  luckynumber=42,
  soccer.team="red devils",
  nationality="belgium",
  number.siblings=1,
  height=1.88
)

info.labrada <- data.frame(
  name = "alberto",
  lastname = "labrada soto",
  age = 20,
  zipcode = 44500,
  highest.education.degree = "high school",
  favourite.color = "blue",
  significant.other = T,
  music.genre = "metal",
  favourite.book = "the dance with dragons",
  favourite.saga = "a song of ice and fire",
  semester = 6,
  luckynumber = 24,
  soccer.team = "rayados",
  nationality = "mexican",
  number.siblings = 1,
  height = 1.79
)


students.data.5 <- rbind(info.luisp, info.David)
students.data.5 <- rbind(students.data.5, info.hector)
students.data.5 <- rbind(students.data.5, info.marcus)
students.data.5 <- rbind(students.data.5, info.labrada)

# Get working directory
getwd()
save(students.data.5, file = "students.data.5.R")

# Write to csv
write.csv(students.data.5, file = "students.data.5.csv")

# Read to csv
students.full.data <- read.csv("students.full.data.csv", stringsAsFactors = F)
students.full.data

# Get structure of the data
str(students.full.data)
summary(students.full.data)

students.full.data[students.full.data$number.siblings > 3, c("name", "lastname")]
students.full.data[students.full.data$soccer.team == "chivas", c("favourite.color")]
students.full.data[students.full.data$soccer.team == "chivas", c("name")]

students.full.data[17, "soccer.team"] <- "barca"

students.full.data[students.full.data$soccer.team == "barca", c("name")]
