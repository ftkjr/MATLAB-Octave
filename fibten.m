%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fibten() by Fred Kaesmann
% Based off: recFactorial() written by Leon Q. Brin 21 January 2013 %
% INPUT: nonnegative integer n. %
% OUTPUT: nth fibonacci computed recursively %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = fibten(n)
  f = [1:n];
  if( n<0 )
    printf("%f is not a valid number for this function\n",n);
  elseif ( n==0 )
    f = 0;
  elseif( n == 1)
    f = 1;
    elseif( n == 2)
    f = [1,1];
  else
    for i = 2:n
    f(i) = recfib(n-2) + recfib(n-1);
   endfor
  endif
endfunction
