%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% recfib() by Fred Kaesmann
% Based off: recFactorial() written by Leon Q. Brin 21 January 2013 %
% INPUT: nonnegative integer n. %
% OUTPUT: nth fibonacci computed recursively %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = recfib(n)
  if( n<0 )
    printf("%f is not a valid number for this function\n",n);
  elseif ( n==0 )
    f = 0;
  elseif( n == 1)
    f = 1;
  else
    for i = 2:n
    f = recfib(n-2) + recfib(n-1);
   endfor
  endif
endfunction
