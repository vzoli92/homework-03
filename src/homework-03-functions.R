# V/3. feladat

# get_gender fgv írása

get_gender <- function(name){
  # vágjuk le a "Character" részt a nemek kiírásánál
  gsm <-
    lapply(strsplit(as.character(comic_characters$gsm), " Characters"), `[`, 1)
  nem <-
    lapply(strsplit(as.character(comic_characters$sex), " Characters"), `[`, 1)
  
  # az előző két vektorból hozzunk létre egy listát gender néven
  gender <- list(gsm,nem)
  
  #  nemek néven mentsük ki a karakterek nemét az ifelse segítségével
  nemek <- 
    ifelse(is.na(gender[[1]][comic_characters$name==name])==TRUE,
                 gender[[2]][comic_characters$name==name],
                 gender[[1]][comic_characters$name==name])
  # végül egy vektorban írassuk ki
  sapply(nemek, function(x) x)
}