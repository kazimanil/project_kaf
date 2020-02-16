## Created By: Kazım Anıl Eren
## Created On: 2018-08-31
## Edited  On: 2020-02-02
## Target    : Calculates the seconds difference between two dates in HH:MM:SS format.
## Edits     :
## Function  :

time_dif = function(start_date, end_date){
	hour_dif = as.numeric(substr(trimws(end_date), 1, 2)) - as.numeric(substr(trimws(start_date), 1, 2))
	min_dif  = as.numeric(substr(trimws(end_date), 4, 5)) - as.numeric(substr(trimws(start_date), 4, 5))
	sec_dif  = as.numeric(substr(trimws(end_date), 7, 8)) - as.numeric(substr(trimws(start_date), 7, 8))
	dif = sec_dif + min_dif * 60 + hour_dif * 3600
	rm(hour_dif, min_dif, sec_dif)
	dif
}
