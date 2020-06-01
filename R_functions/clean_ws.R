## Created By: Kazım Anıl Eren
## Created On: 2018-03-21
## Edited  On:
## Target    : If there are entries with more than one spaces in a text column, this function reduces the amount of spaces to 1.
##             Replace empty rows with "NA" or "NULL" values.
## Edits     : 
## Function  :

bt <- function(x){
  # bt stands for bosluk_temizle. or clean_ws in Turkish.
  while(grepl("  ", x) == TRUE){
    x = gsub("  ", " ", x)
  }
  if (!is.na(x) & x == " "){
    x = as.character(NA)
  } else {
      x
  }
  x
}
bosluk_temizle <- Vectorize(clean_ws); rm(clean_ws)
