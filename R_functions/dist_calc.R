## Created By: Kazım Anıl Eren
## Created On: 2018-08-16
## Edited  On:
## Target    : Distance Calculator based on Latitude & Longitude of two locations.
## Edits     :
## Function  :

# Uses Haversine formula at https://www.movable-type.co.uk/scripts/latlong.html as reference

dist_calc = function(lat1, len1, lat2, len2){
  # radian transformation
  lat1 = lat1 * pi / 180
  lat2 = lat2 * pi / 180
  len1 = len1 * pi / 180
  len2 = len2 * pi / 180
  # distances are calculated for sine functions.
  dist_lat = (lat2 - lat1) / 2
  dist_len = (len2 - len1) / 2
  a = sin(dist_lat)^2 + (cos(lat1) * cos(lat2) * sin(dist_len)^2)
  c = 2 * atan2(sqrt(a), sqrt(1-a))
  d = 6371 * c
  d
}
