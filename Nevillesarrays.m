%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nevillesarrays( x, y ) %
% Written by Fred Kaesmann Jr Date: 2018/11/20        %
% Assumptions: This may not be the best way of doing this %
% INPUT: Node arrays x and y %
% OUTPUT: Matrix P, where row 1 is interpolating polynomial %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function P = Nevillesarrays( x, y)
 % Initializing n
 n = length(x);
  for i=1:n % first column
    P(i,1) = y(i);  
  endfor 
  for j = 2:n % starting with the second column of matrix P
   for i = 1:n+1-j % starting with first row 
    P(i,j) = ( P(i,j-1) - P(i+1,j-1) ) / (x(i)-x(i+j-1));
   endfor
  endfor
endfunction % Fin