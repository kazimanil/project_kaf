## Created By: Kazım Anıl Eren
## Created On: 2018-09-11
## Edited  On:
## Target    : Returns the day of the week in Turkish.
## Edits     : None
## Function  :


hg <- function(x){
  x <- `Encoding<-`(as.character(x), "UTF-8")
  if(x == 1){
      x = "Pazartesi"
  } else if (x == 2){
      x = "Sali"
  } else if (x == 3){
      x = "Çarsamba"
  } else if (x == 4){
      x = "Persembe"
  } else if (x == 5){
      x = "Cuma"
  } else if (x == 6){
      x = "Cumartesi"
  } else if (x == 7){
      x = "Pazar"
  } else {
      x = as.character(NA)
  }
  x
}

haftaningunu <- Vectorize(hg); rm(hg)
