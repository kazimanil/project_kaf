## Created By: Kazım Anıl Eren
## Created On: 2018-03-22
## Edited  On:
## Target    : After tokenizing a post from Twitter or Instagram, a need for cleaning tokens which are one or two characters.
##             This functions aims to define those tokens. If this function returns TRUE then the user can delete that token.
## Edits     :
## Function  :

tt <- function(x){
  ## tt stands for clean tokens in Turkish.
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
clean_tokens <- Vectorize(tt); rm(tt)
