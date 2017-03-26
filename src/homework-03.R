###############################
#      Házi feladat 3.        #
#      Programozás I.         #
#      2016/17 II. félév      #
#                             #
#       Verba Zoltán          #
#       2017.03.26.           #
###############################


# II/1. feladat

# 5 vektort tartalmazó lista készítése, melyeknek a hossza 10 és 20 közötti
# véletlen szám és az elemek az (1,2) intervallumon egyenletes eloszlásból 
# származnak

mylist <- list(runif(sample(c(10:20),1),1,2),
               runif(sample(c(10:20),1),1,2),
               runif(sample(c(10:20),1),1,2),
               runif(sample(c(10:20),1),1,2),
               runif(sample(c(10:20),1),1,2))
#-------------------------------------------------------------------------------

# II/2. feladat

# for ciklussal megnézzük a lista elemeinek hosszúságát és ezt egy vektorba 
# rendezzük

hossz <- NA
for(i in 1:length(mylist)){
  hossz[i] <- length(mylist[[i]])
  }
# a hossz vektor tartalmazza a listában szereplő 5 vektor hosszúságát
hossz

#-------------------------------------------------------------------------------

# II/3. feladat

# az előző feladat megoldása apply fgv-nyel, csal ez listában írja ki, a vektorok
# hosszát

lapply(mylist, function(x) length(x))
#-------------------------------------------------------------------------------

# II/4. feladat

# az előző feladat megoldása csak lista helyett vektorba rendezett eredménnyel

sapply(mylist, function(x) length(x))
#-------------------------------------------------------------------------------

# III/1. feladat

# a chickwts adatbázis behívása
data(chickwts)
head(chickwts)

# nézzünk rá az adatokra
View(chickwts)
?chickwts

#-------------------------------------------------------------------------------

# III/2. feladat

# a különbözőképp táplált csirkék átlagsúlyának kiszámolása
# rögtön létrehozok belőle egy dataframet weight_mean névvel
weight_mean <- 
  aggregate(chickwts$weight, by = list(feed = chickwts$feed), mean)

# az eredmény
weight_mean
#-------------------------------------------------------------------------------

# III/3. feladat

# átlagsúly szerint csökkenő sorrendben
weight_mean[order(weight_mean$x,  decreasing = TRUE), ]

#-------------------------------------------------------------------------------

# IV/1. feladat

# mátrix létrehozása a megadott tulajdonságokkal

m <- matrix(NA,nrow=50,ncol=10)
for (i in 1:nrow(m)){
  m[i,]<-rnorm(ncol(m),mean=0,sd=i)
}

#-------------------------------------------------------------------------------

# IV/2. feladat

# a mátrix sorainak szórása for ciklussal, vektorban mentve

szoras <- NA
for (i in 1: nrow(m)){
  szoras[i] <- sd(m[i, ])
}

# az eredmény

szoras

#-------------------------------------------------------------------------------

# IV/3. feladat

# az előző feladat megoldása aplly fgv-nyel

apply(m,1,sd)

#-------------------------------------------------------------------------------

# IV/4. feladat

# a mátrix értékeinek normalizálása (-1,1) intervallumra és a sorok átlagának
# kiszámítása

m2 <- -1+2*(m-min(m))/(max(m)-min(m))

# nézzük meg a sorok átlagát
apply(m2,1,mean)

#-------------------------------------------------------------------------------

# V/1. feladat

# az előző háziban is használt comic-characters adatbázis behívása

library(fivethirtyeight)
data(comic_characters)
head(comic_characters)

# nézzünk rá az adatokra
View(comic_characters)
#-------------------------------------------------------------------------------

# V/2. feladat

# a karakterek nevének átalakítása

comic_characters$name <-
  sapply(strsplit(as.character(comic_characters$name), "[ ][(]"), `[`, 1)
#-------------------------------------------------------------------------------

# V/3. feladat

# A feladat megoldása a homework-03-functions.R fájlban található.

#-------------------------------------------------------------------------------

# V/4. feladat

# először definiáljuk a fgv helyét

source("src/homework-03-functions.R")

# a fgv használata
get_gender("Thor")
get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")
#-------------------------------------------------------------------------------



