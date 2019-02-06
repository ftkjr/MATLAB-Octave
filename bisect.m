%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bisect(f, a, b, N, Tol) %
% Written by Fred Kaesmann Jr        %
% September 14, 2018
% Assumptions: f is continuous over [a,b] 
% INPUT: Some function f, The interval a to b, ,error tolerance Tol  %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [p, n, tol] = bisect(f, a, b, N, Tol)
  
  a_n = a;
  b_n = b;
  n = 1
  tol = abs(b - a);
  
  while (tol >= Tol && n < N)
    L = f(a_n);
    m_n = (a_n + b_n) / 2;
    M = f(m_n);
    if(L * M < 0)
      b_n = m_n;
    else
      a_n = m_n;
    endif
    tol = tol / 2;
    n = n + 1;
  endwhile
  format('long')
  p = m_n;
  
%  if( abs(f(p)) < Tol)
%        printf("%f appears to be a root to the tolerance of %f\n", p, Tol);
%  else 
%   printf("%f does not appear to be a root of %f\n", f);
%  endif
    
endfunction
