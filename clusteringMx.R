# teams names
nombre.equipos <- c("cruzazul","america","santos","pumas","toluca",
                    "mty","tigres","qtro", "morelia","tijuana",
                    "pachuca","chivas","puebla","leon","necaxa",
                    "lobos", "veracruz", "atlas")
length(nombre.equipos)


# games won
partidos.ganados <- c(8,7,7,6,7,6,5,4,4,4,4,4,4,4,3,3,2,1)
length(partidos.ganados)
#tournaments won
torneos.ganados <- c(8,12,6,7,10,4,6,1,1,1,6,12,2,7,3,0,2,1)
length(torneos.ganados)

datos.mx <- data.frame(equipos=nombre.equipos, ganados=partidos.ganados,
                       torneos=torneos.ganados)
mi.datos.mx <- datos.mx
rownames(mi.datos.mx) <- datos.mx$equipos
mi.datos.mx$equipos <- NULL
summary(mi.datos.mx)

wss <- vector()
for (i in 1:12) wss[i] <- sum(kmeans(mi.datos.mx, centers = i)$withinss)

# PLOT 1
plot(1:12, wss, type="b", xlab="Numero de clusters", ylab="Error standard")

set.seed(1234)
kmeans.3 <- kmeans(mi.datos.mx, 3)
kmeans.3$cluster
mi.datos.mx$categoria <- kmeans.3$cluster
mi.datos.mx

plot(mi.datos.mx, col=kmeans.3$cluster)

mi.datos.mx[mi.datos.mx$categoria == 2,]$categoria <- "Normalones"
mi.datos.mx[mi.datos.mx$categoria == 1,]$categoria <- "Maletas"
mi.datos.mx[mi.datos.mx$categoria == 3,]$categoria <- "Dioses"
mi.datos.mx


