
x <- 2
y <- 10
w <- 3
a <- c(0,0,2*x,2*x)
b <- c(0,2*y,2*y,0)
e <- c(0,5,8,9,9,9,8,5,1)
f <- c(0,10,11,11,12,12,11,10,0)

k <- 5
l <- 8
plot(c(0,250),c(0,50),type='n',main="beautiful millipede",
     xlab="x of millipede",
     ylab="y of millipede")

for (i in c(1:100)) {
  polygon(a+x*i,b+15+w*sin(i*pi/l),col="black")
  if (i %% k == 0) {
    polygon(e+x*i,13+2*y+sin(i*pi/l)+f,col="black")
    polygon(e+x*i,17+sin(i*pi/l)-f,col="black")
  }
  points(200+50*sin(pi*(i+10)/110), 40+x+7*cos(pi*(i+10)/110))
  points(200+50*sin(pi*(i+10)/110), 15+x-7*cos(pi*(i+10)/110))
}
