function P = Nevillesf( x, f)
 % Initializing n
 n = length(x);
  for i=1:n
    P(i,1) = f(x(i));  % first polynomial construction column
  endfor
  for j = 2:n % starting with the second column of matrix P
   for i = 1:n+1-j 
    %P(i,j)=( (xhat - x(i+j-1)) * P(i, j-1) - (xhat-x(i)) * P(i+1, j-1) ) / ( x(i)-x(i+j-1) );
    P(i,j) = ( P(i,j-1) - P(i+1,j-1) ) / (x(i)-x(i+j-1));
   endfor
  endfor
endfunction