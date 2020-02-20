# Read from csv
students.full.data <- read.csv("students.full.data.csv", stringsAsFactors = F)
students.full.data

info.extraRow.1 <- data.frame(
  name = "new row",
  lastname = "1",
  age = 20,
  zipcode = 44500,
  highest.education.degree = "high school",
  favourite.color = "blue",
  significant.other = T,
  music.genre = "metal",
  favourite.book = "Fuente ovejuna",
  favourite.saga = "Crepusculo",
  semester = 6,
  luckynumber = 24,
  soccer.team = "chivas",
  nationality = "mexican",
  number.siblings = 1,
  height = 1.79
)

info.extraRow.2 <- data.frame(
  name = "new row",
  lastname = "2",
  age = 22,
  zipcode = 15789,
  highest.education.degree = "college",
  favourite.color = "orange",
  significant.other = F,
  music.genre = "rock",
  favourite.book = NA,
  favourite.saga = "Harry Potter",
  semester = 7,
  luckynumber = 99,
  soccer.team = "Bayern",
  nationality = "German",
  number.siblings = 4,
  height = 6.79
)

info.extraRow.3 <- data.frame(
  name = "new row",
  lastname = "3",
  age = 18,
  zipcode = 45789,
  highest.education.degree = "college",
  favourite.color = "red",
  significant.other = T,
  music.genre = "blues",
  favourite.book = NA,
  favourite.saga = NA,
  semester = 10,
  luckynumber = 0,
  soccer.team = "PSG",
  nationality = "french",
  number.siblings = 8,
  height = 9.79
)

# Add 3 extra rows defined above
students.full.data = rbind(students.full.data, info.extraRow.1)
students.full.data = rbind(students.full.data, info.extraRow.2)
students.full.data = rbind(students.full.data, info.extraRow.3)

# Add new column option 1
students.full.data$id <- 1:32
students.full.data

# Add new column option 2
students.full.data <- transform(students.full.data, isStarWarsFan = favourite.saga == "star wars")
students.full.data

# Add new column option 3
students.full.data$USLegal <- mapply(function(age) {age > 21}, students.full.data$age)
students.full.data

# Write activity to CSV
write.csv(students.full.data, file = "students.full.data.hmwk.csv")
