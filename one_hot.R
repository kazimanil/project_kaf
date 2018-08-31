## Created By: Kazım Anıl Eren
## Created On: 2018-08-31
## Target    : Automatically encodes character / factor columns into dummy variables.
## Function  :

one_hot = function(dt, cols){
  if(exists("cols") == FALSE){
    stop() # if no columns were given then function fails
  }
  for(i in 1:length(cols)){
   j = which(colnames(dt) == cols[i]) # finds out the number of the column of the specified column name.
   uniquevals = unique(dt[, j, with = FALSE])
   uniquevals = uniquevals[which(!is.na(uniquevals))] # No need for NA columns.
   uniquevals = uniquevals[which(!uniquevals == "")]  # No need for empty columns. Should be extended with columns with only spaces.
    for(k in 1:nrow(uniquevals)){
      newcol = as.character(uniquevals[k, 1])
      dt[, (paste0(colnames(dt[, j, with = FALSE]), "_", newcol)) := 
            ifelse(get(colnames(dt[, j, with = FALSE])) == uniquevals[k], 1, 0)]   
    }
  }
  rm(i, j, k, uniquevals, newcol);
  
}
