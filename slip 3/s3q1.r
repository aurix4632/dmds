
n=123
sum = 0
rev = 0
while(n > 0)
{
    r = n %% 10
    sum = sum + r
    rev = rev * 10 + r
    n = n %/% 10
}
print(paste("Sum of digits : ",sum))
print(paste("Reverse of numbers : ",rev))
