###### for loop

for(i in 1:10) {
  print(i)
  a[i] <- i*2
}



#### while loop

x <- 1

while(x<=5) {
  if(x == 3) {
    break
  }
  print(x*2)
  x <- x + 1
}
