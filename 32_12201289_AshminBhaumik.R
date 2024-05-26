# GCD of Two numbers......
{
  x <- as.numeric(readline("x: "))
  y <- as.numeric(readline("y: "))
  great <- y
  if(x<=y) great <- x
  gcd = -1
  for(i in 1:great) {
    if(x%%i == 0 && y%%i == 0) {
      gcd = i
    }
  }
  cat("GCD: ",gcd)
}

# Pyramid....
{
  n <- as.numeric(readline("n:"))
  b = 1
  for(i in n:1) {
    for(j in 1:i) {
      cat(" ")
    }
    for(k in 1:b){
      cat(" *")
    }
    cat("\n")
    b = b+1
  }
}

{
  b = 1
  for(i in 6:1) {
     for(j in 1:i) {
        cat(" ")
       }
        for(k in 1:b){
           cat(" *")
    }
  cat("\n")
  b = b+1
  }
  
  v = 5
  for(i in 2:6) {
  for(j in 1:i) {
     cat(" ")
    }
  for(k in 1:v){
      cat(" *")
    }
    cat("\n")
    v = v-1
    }
}