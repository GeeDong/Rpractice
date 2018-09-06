###### if and else

check.bool <- function(x) {
  if(x==1){
    print('Hello')
  } else if(x==0){
    print('Goodbye')
  } else {
    print('What the?')
  }
    
}

check.bool(1)

check.bool(2)

check.bool('k')

check.bool(TRUE)

check.bool(FALSE)

####### switch

use.switch <- function(x) {
  switch(x,
         'a' = '1st',
         'b' = '2nd',
         'c' = '3rd',
         'd' = '4nd',
         'other')
}

use.switch('a')
use.switch('d')
use.switch(1)
use.switch('e')



###### ifelse
toTest <- c(1, 0 ,1, 1, TRUE, FALSE, NA)

ifelse(toTest==1 , 'yes', 'no')


