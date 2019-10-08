function S = summands(f,g,tol)
n=1;
S = 1;
while( abs( S - g ) >= tol )
n = n+1;
S = S + f(n);
endwhile
printf("%d summands to achieve tolerance of %d\n", n, tol);
endfunction