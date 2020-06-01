## Created By: Kazım Anıl Eren
## Created On: 2018-08-31
## Edited  On: 2018-09-03
## Target    : Automatically encodes character / factor columns into dummy variables.
## Edits     : Separator for encoding is included in the function.
## Function  :

one_hot = function(dt, cols, sep = "_"){
  if(exists("cols") == FALSE){
    stop() # if no columns were given then function fails
  }
  for(i in 1:length(cols)){
   j = which(colnames(dt) == cols[i]) # finds out the number of the column of the specified column name.
   uniquevals = unique(dt[, j, with = FALSE])
   uniquevals = uniquevals[which(!is.na(uniquevals))] # No need for NA columns.
   uniquevals = uniquevals[which(!uniquevals == "")]  # No need for empty columns. Should be extended with columns with only spaces.
   uniquevals = `colnames<-`(uniquevals, "V1")
   for(k in 1:nrow(uniquevals)){
     newcol = as.character(uniquevals[k, 1]$V1)
     dt[, (paste0(colnames(dt[, j, with = FALSE]), sep, newcol)) := 
          ifelse(is.na(get(colnames(dt[, j, with = FALSE]))), 0, ifelse(get(colnames(dt[, j, with = FALSE])) == uniquevals[k]$V1, 1, 0))]   
   }
  }
  rm(i, j, k, uniquevals, newcol);
  dt
}
