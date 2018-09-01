## Created By: Kazım Anıl Eren
## Created On: 2018-08-30
## Edited  On: 2018-09-01
## Target    : Automatically replaces values in many columns.
## Edits     : Fixed various bugs, expanded capacity, improved speed.
## Function  :

auto_rep = function(dt, pattern = NA, cols = NA, old_val, new_val){
	require("data.table")
	if(sum(is.na(cols)) > 0  & sum(is.na(pattern)) > 0 ){
		stop() # either columns or pattern of columns must be specified
	}
	if(sum(is.na(cols)) > 0 ){
		cols = colnames(dt)[grepl(pattern = pattern, colnames(dt))]		
	} # if pattern is supplied, columns are chosen from data.table.
	if(is.na(old_val)){
	new_vals = as.data.table(sapply(dt[, cols, with = FALSE], function(x){ifelse(is.na(x), new_val, x)}))
	} else {
	new_vals = as.data.table(sapply(dt[, cols, with = FALSE], function(x){ifelse(x == old_val, new_val, x)}))
	}
	dt[, (cols) := new_vals]
	}