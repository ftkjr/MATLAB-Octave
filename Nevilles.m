%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nevilles( xhat, x, y) %
% Written by Fred Kaesmann Jr Date: 2018/11/01        %
% Assumptions: P_n(x) is the degree at most n polynomial
% interpolating the data (x_0, f(x_0)), (x_1, f(x_1))
%, ..., (x_n, f(x_n)), and the value P_n(xhat) is desired.
% 
% INPUT: Value xhat, abscissas x_0, x_1, ..., x_n; Coordinate array, y %
% OUTPUT: Table of values, P. P_0,n holds the 
% desired value L_n(xhat)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function P = Nevilles( xhat, x, y)
 % Initializing n
 n = length(x);
  for i=1:n
    P(i,1) = y(i);  % first polynomial construction column
  endfor
  for j = 2:n % starting with the second column of matrix P
   for i = 1:n+1-j 
    P(i,j)=( (xhat - x(i+j-1)) * P(i, j-1) - (xhat-x(i)) * P(i+1, j-1) ) / ( x(i)-x(i+j-1) );
   endfor
  endfor
endfunction
