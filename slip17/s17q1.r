fibonacci<-function(n){
fib<-numeric(n)
fib[1]<-0
fib[2]<-1
for(i in 3:n){
fib[i]<-fib[i-1]+fib[i-2]
}
return(fib)
}
first_20_fib<-fibonacci(20)
print(first_20_fib)
