## Yazar: Kazım Anıl Eren
## Tarih: 2018-03-22
## Amaç : Kelimeler token'a bölündükten sonra tek veya iki karakterden oluşan token'lari temizleyebilmek için bir ayraç oluşturmak.
##        Eğer TRUE ise token'ın bir ya da iki karakterden oluştuğunu yani silinebileceğini belirtir.

tt <- function(x){
  x <- gsub("[:@:]", "",
          gsub("[:#:]", "", 
               gsub("[:^:]", "",
                    gsub("[:\\:]", "", 
                         gsub("[:~:]", "", x)))))
  if(nchar(x) > 2 & !(grepl("\\d", x) & !grepl("\\D", x)) ){
    TRUE
  } else {
    FALSE
  }
}
token_temizle <- Vectorize(tt); rm(tt)