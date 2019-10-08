%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% collatz(n) %
% Written by Fred Kaesmann Jr Date: mid september 2018        %
% INPUT: n: some number  %
% OUTPUT: if n is even, output is n/2 %
%         if n is odd, output is 3*n+1 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function res = collatz(n)
  if(ceil(n/2)==(n/2))
    even=n/2;
    even
  else
    odd=3*n+1;
    odd
  endif
endfunction
