
set.seed(666)
nn <- 1e6

xx <- 3 * rnorm(nn)

yy <- -xx / 3 + 2 * rnorm(nn)

vx <- round(var(xx), 1)

vy <- round(var(yy), 1)

vxy <- round(var(xx + yy), 1)

cxy <- round(cov(xx, yy), 1)

## var of xx + yy
vx + vy + 2*cxy

## var of xx - yy
vx + vy - 2*cxy

9 + 10 + 2 * 9

var(xx - yy)

9 + 10 - 2*9




x1 <- cbind(xx, yy)

var(x1)
cov(x1)





library(MASS)

mu <- rep(0, 2)

sig1 <- matrix(c(1, -1, -1, 1), 2, 2)

sig2 <- matrix(c(10, 5, 5, 10), 2, 2)

y1 <- mvrnorm(nn, mu, sig1)
var(y1)

y2 <- mvrnorm(nn, mu, sig2)
var(y2)

y3 <- y2 + y1
var(y3)

y4 <- y2 - y1
var(y4)


sig3 <- 2*diag(2) %*% matrix(c(1, 0.5, 0.5, 1), 2, 2) %*% diag(2)

y5 <- mvrnorm(nn, mu, sig3)

var(y5)
cor(y5)

sig4 <- 2 * matrix(c(1, 0.5, 0.5, 1), 2, 2)

y6 <- mvrnorm(nn, mu, sig4)

var(y6)

sig5 <- 2 * matrix(c(1, -0.5, -0.5, 1), 2, 2)

y7 <- mvrnorm(nn, mu, sig5)

var(y7)

