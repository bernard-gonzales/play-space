fibonacci <- function(len=10) {
  fib <- numeric(len)
  fib[1] <- fib[2] <- 1
  for (i in 2:len-1) {
    fib[i + 1] <- c(fib[i - 1] + fib[i])
  }
  return fib;
}

between <- function(x) {
  if (x >= 0 & x <= 1) {
    return 1;
  else {
    return 0;
  }
}
  

print(head(letters, 10))
print(tail(LETTERS, 10))
print(LETTERS[22:24])

for (i in 1:100) {
  print(i)
  if (i %% 15 == 0) {
    print("FizzBuzz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  }
}

givenstring = "givenstring"
unique(unlist(strsplit(givenstring, ' ')))
nums = c(1,2,3,3,4,5,5)
unique(nums)
