######### list
ls1 <- list(1,2,3)
ls2 <- list(c(1,2,3))
(ls3 <- list(c(1,2,3),3:7))
ls4 <- list(theDF, 1:10)
ls5 <- list(theDF, 1:10, ls3)

names(ls5) <- c('one', 'two', 'three')

ls5[[2]]

ls5[[4]] <- 3:6
ls5[['Newelement']] <- 2



########### matrix
A <- matrix(1:10, nrow=5)
B <- matrix(21:30, nrow=5)

alpha <- matrix(1:4, nrow=2)
beta <- matrix(5:8, nrow=2)

dd <- alpha %*% t(beta)
colnames(alpha) <- c('one', 'two')
rownames(alpha) <- c('on','tw')



########### Array
(theArray <- array(1:12, dim = c(2,3,2)))

theArray[1,,]

class(theArray[1,,])
