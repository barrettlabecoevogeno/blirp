set.seed(1234567)
x = 1:5
y = array(dim = c(10,5))
  for(j in 1:length(x)){
      y[,j] = 2*x[j] + 1 + rnorm(dim(y)[1],0,8)
  }
y

stderr <- function(x) sqrt(var(x,na.rm=TRUE)/length(na.omit(x)))
se.y = apply(y,2,stderr)
mean.y = apply(y,2,mean)
plot.and.se <- function(x,y,se,
                        ylim = NULL,
                        xlim = NULL, 
                        lab.axis = NULL,
                        title = "Title",
                        xlab = "Site Category",
                        ylab ="Mean",
                        epsilon = 0.02) {
  stderr <- function(x) sqrt(var(x,na.rm=TRUE)/length(na.omit(x)))
  # se = stderr(y)
  se = se 
  mean = mean(y)
  if(is.null(xlim)){
    min.y=min(y-se)
    max.y=max(y+se)
    xlim = range(x)
    ylim = c(min.y,max.y)
  }else {ylim =ylim; xlim=xlim}
  plot(NA,
       type = "p",
       ylim = ylim,
       xlim = xlim,
       xaxt="n",
       main = title,
       xlab = xlab,
       ylab = ylab)
  if(class(y)=="factor"){
    axis(side = 1, at = x, 
         labels = levels(lab.axis), 
         cex.lab = 1, cex.axis =1)} else {axis(side = 1, at = x, 
                                               labels = x, 
                                               cex.lab = 1, cex.axis =1)}
  segments(x, y-se,x, y+se)
  segments(x-epsilon,y-se,x+epsilon,y-se)
  segments(x-epsilon,y+se,x+epsilon,y+se)  
  points(y~x, pch = 21, bg = "black", col = "black", cex = .5)
}

plot.and.se(x = x,y = mean.y, se = se.y); abline(lm(mean.y~x))
