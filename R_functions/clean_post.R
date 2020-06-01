## Created By: Kazım Anıl Eren
## Created On: 2018-09-11
## Edited  On:
## Target    : Cleans up tweets and instagram posts.
## Edits     : None
## Function  :

# Adopted from rtweet::plain_tweets.R

rm_fancy_apostrophes <- function(x) gsub(intToUtf8(8217), "'", x)

rm_fancy_spaces <- function(x) {
  gsub("\\t", " ", gsub(intToUtf8(65039), " ", x))
}

rm_links <- function(x) {
  x <- gsub("\\s{0,1}http\\S{1,}\\s{0,1}", "", x)
  gsub("\\s{0,1}\\S{1,}(\\.com|\\.net|\\.gov|\\.io|\\.org)\\b\\s{0,1}", "", x)
}

rm_linebreaks <- function(x, y = " ") {
  gsub("\\n", y, x)
}

enc2ascii <- function(x, y = "") {
  iconv(x, to = "ascii", sub = y)
}

rm_amp <- function(x, y = "&") {
  if (is.null(y)) {
    y <- ""
  }
  gsub("&amp;", y, x)
}

rm_gt <- function(x, y = "") {
  if (is.null(y)) {
    y <- ""
  }
  gsub("&gt;", y, x)
}

trim_ws <- function(x) {
  x <- gsub("\\s{2,}", " ", x)
  gsub("^\\s|\\s$", "", x)
}

punct <- fread("C:/Users/kazimanil/Documents/R_Projects/Migros/dicts/punct_dictionary.txt", sep = "\t", encoding = "UTF-8", quote = '"')
punct[, Name := as.character("  ")]
punct <- punct[!c(5,21)]

emj <- as.data.table(rtweet::emojis)[, .(kod = code, gulucuk = paste0(" ^", gsub(pattern = " ", replacement = "_", x = description), " "))]
emj[, gulucuk := gsub("[:,:]", "", gulucuk)]
emj <- emj[, kod2 := stringi::stri_escape_unicode(kod)]
emj <- emj[order(-nchar(kod2))]

clean_post <- function(x) {
  x <- rm_links(x)
  x <- rm_linebreaks(x)
  x <- rm_fancy_spaces(x)
  x <- rm_fancy_apostrophes(x)
  x <- rm_amp(x)
  x <- rm_gt(x)
  x <- qdap::multigsub(pattern = punct$Codepoint, replacement = punct$Name, text.var = x)
  x <- gsub("[:':]", "", x)
  x <- gsub("İ", "i", x)
  x <- gsub("ı", "i", x)
  # x <- stringi::stri_unescape_unicode(qdap::multigsub(emj$kod2, emj$gulucuk, stringi::stri_escape_unicode(x)))
  # x <- enc2ascii(x)
  trim_ws(x)
}
