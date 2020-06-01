## Created By: Kazım Anıl Eren
## Created On: 2018-04-09
## Edited  On:
## Target    : A brute-force algorithm which finds out prime numbers until the given limit.
## Edits     :
## Function  :


pnd <- function(maxvalue = 2000000){
  primenumbers <- as.numeric(2)
  for(num in 3:maxvalue){
    for(primenum in 1:length(primenumbers)){
      if(num %% primenumbers[primenum] == 0){
        break()
      } else {
        if(primenum == length(primenumbers)){
          primenumbers = append(primenumbers, num)
        }
      }
    }
  }
  primenumbers
}
