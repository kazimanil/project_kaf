## Created By: Kazım Anıl Eren
## Created On: 2018-08-30
## Target    : Automatically replaces values in many columns.
## Function  :

auto_rep = function(dt, pattern = NA, colnames = NA, old_val, new_val)
	require("data.table")
	{
	if(is.na(colnames) & is.na(pattern)){
		stop() # either columns or pattern of columns must be specified
	}
	if(is.na(colnames)){
		colnames = colnames(dt)[grepl(pattern = pattern, colnames(dt))]		
	} # if pattern is supplied, columns are chosen from data.table.
	new_vals = as.data.table(sapply(dt[, colnames, with = FALSE], function(x){ifelse(x == old_val, new_val, x)}))
	dt[, (colnames) := new_vals]
	}