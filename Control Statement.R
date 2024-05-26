# Control Statements are the expressions which are used to control the execution 
# and flow of a Program based on the conditions which are provided on the statements
# These structures are further used to make a decision after accessing the variable

# if statement.............
num1 <- 21
if (num1>2) {
  print("I am hello.")
}

# user defined.......
{
  num2 <- as.numeric(readline("Enter any number: "))
  if(num2 > 0) {"Positive"}
  else if(num2 < 0) {"Negative"}
  else "Zero"
}

# To find the number even or odd...........
{
  check <- as.numeric(readline("Enter any number to check: "))
  if(check%%2 == 0) "Even"
  else "Odd"
}

# Vector with ifelse.......
vect <- c(21, 22, 23, 24, 25, 26)
ifelse(vect%%2 == 0, "Even", "Odd")

{
  year <- 2020
  
  if ((year %% 4 == 0 && year %% 100 != 0) || year %% 400 == 0) {
    print("Leap year")
  } else {
    print("Not a leap year")
  }
}

{
  marks <- 75
  
  if (marks >= 90) {
    print("Grade: A")
  } else if (marks >= 80) {
    print("Grade: B")
  } else if (marks >= 70) {
    print("Grade: C")
  } else if (marks >= 60) {
    print("Grade: D")
  } else {
    print("Grade: F")
  }
}

{
  a <- 10
  b <- 20
  
  if (a > b) {
    print("Maximum number is a:", a)
  } else {
    print("Maximum number is b:", b)
  }
}

{
  age <- 20
  
  if (age >= 18) {
    print("You are eligible to vote")
  } else {
    print("You are not eligible to vote yet")
  }
}


# n <- 25
{
i <- as.numeric(readline("Enter any number to check: "))
ifelse(i>=0, ifelse(i<=50,"Positive <= 50","Error greater positive"),
       "Error Negative")
}

# Using while loop....
{
  count <- 5
  repeat {
    print(count)
    count = count+1;
    if(count == 10) {break}
  }
}
# using while loop with characters...
{
  v <-scan(what = "character")
  item = 0;
  while(TRUE) {
    print(v)
    item = item+1;
    if(item == 3) {break}
  }
}

{
  cou = 10
  while(TRUE) {
    print(cou)
    cou = cou-1;
    if(cou <= 0) {break}
  }
}

{
  m <- 0
  while(m<=10) {
    m=m+1
    if(m == 5) {
      next
    }
    print(m)
  }
}

{
  x <- 1
  while(x<20){
  if(x==4 || x==14) {
    x = x+1
  }
  cat("The current x: ",x, "\n")
  x = x+1
}}

{
  x <- 1
  while(TRUE) {
    if(x%%2 != 0) {cat(x, ' ')}
    x=x+1
    if(x>10) {break}
  }
}

{
  num <- 1
  while(num<=10) {
    if(num%%2 == 0){
    num = num+1
    next
  }
  print(num)
  num = num+1
}}

{
  i = 0
  while(i<=20){
    if(i==15 | i==19) 
    { i = i+1
      next
    }
    print(i) 
    i = i+1;
  }
}


{
  sub = 20
  while(sub <= 90) {
    if(sub%%2 == 0){
      sub = sub+1
      next
    }
    print(sub)
    sub = sub+1
  }
}

# Palindrome Number.......
{
  palindrome = 121
  cop = palindrome
  rev = 0
  while(palindrome > 0) {
    rem = palindrome%%10
    rev = rev*10 + rem
    #print(rev)
    palindrome = palindrome%/%10
  }
  if(rev == cop) print("The number is Palindrome")
  else print("The number is not a Palindrome")
}

# Armstrong Number.......
{
  armstrong = 153
  test = armstrong
  cp = armstrong
  length = 0
  while(cp > 0){
    length = length+1
    cp = cp%/%10
  }
  arm = 0
  while(armstrong > 0){
    rem = (armstrong%%10)**length
    arm = arm + rem
    armstrong = armstrong%/%10
  }
  
  if(arm == test) print("Armstrong Number")
  else print("Let's Study for armstrong")
}

# For Loop....

{
  # Capital letters
  forLoop = LETTERS[1:10]
  for(i in forLoop) {
    print(i)
  }
  # Small Letters...
  orLoop = LETTERS[1:10]
  for(i in orLoop) {
    print(i)
  }
}

{
  for (i in 1:10) {
    print(i*i)
  }
}

{
  subj = c("ash", "Bhau", "Ram", "Sham", "Vec", "Gan")
  for(i in subj)
    print(i)
}

{
  seq1 = c(1, 2, 3)
  seq2 = c(1, 2, 3)
  for(i in seq1){
    for(j in seq2){
      if((i+j)%%2 == 0){
        print(paste(i,j))
      } 
      else next
    }
  }
}

{
  vecto = c(2,5,3,9,8,11,6)
  length = 0
  for(i in vecto){
    if(i%%2 == 0) length = length+1
  }
  print(length)
}

{
  fact = as.numeric(readline())
  int.fact = 1
  for(i in 1:fact){
    int.fact = int.fact*i
  }
  print(int.fact)
}

 # Other Questions.....
{
  flag = 0
  n = 3
  for(i in 1:20) {
    if(flag%%2 == 0 & i%%2==0) {
      cat("For 2nd number is even\n")
      flag = flag+1
    }
    else if(flag%%2 != 0 & (n*i)%%2==0) {
        cat("For Product number is even\n")
      flag = flag+1
    }
    else {
      cat(n," x ",i," = ",n*i,"\n")
    }
  }
}





