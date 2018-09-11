## Yazar: Kazım Anıl Eren
## Tarih: 2018-03-21
## Amaç : Metin sütunlarında çift boşluğa sahip satırların boşluk sayısını olması gereken düzeye indirmek. 
##        Sadece boşluktan oluşan satırları "NA" olarak işaretlemek.

bt <- function(x){
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
bosluk_temizle <- Vectorize(bt); rm(bt)