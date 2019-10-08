function f = bisectioniterations(a, b, tol)

n=1;
while((b-a)/(2^n) > tol)
n=n+1;
endwhile
printf("%d iterations\n", n)
