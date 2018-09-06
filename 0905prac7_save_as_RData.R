#save(tomat, file = 'data/tomato.rdata')

n <-20
r <- 1:10
w <- data.frame(n,r)

save(n,r,w, file = 'data/multiple.rdata')
#load('data/multiple.rdata')


smallVector <- c(1,5,4)

saveRDS(smallVector, file = 'data/thisObject.rds')

thatVect <- readRDS('data/thisObject.rds')
