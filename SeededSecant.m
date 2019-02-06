%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SeededSecant(x_0, g, tol, N) %
% Written by Fred Kaesmann Jr Date: 2018/09/29        %
% Assumptions: g has a root at x; g is differentiable around x;
%                 x_0 is sufficiently close to x
% INPUT: Initial value: x_0; some function: g; desired accuracy: tol;
%         maximum number of iterations: N
% OUTPUT: Approximation of x near exact fixed point. Or failure. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ret = SeededSecant(x_0, g, tol, N)
  
  y_0 = g( x_0 );
  x_1 = x_0 + y_0;
  y_1 = g( x_1 );
  
 for j = 1:N
   % x = f(x_0, x_1, y_0, y_1) = x_1 - y_1 * ( (x_1 - x_0) / (y_1 - y_0) )
    x = x_1 - y_1 * ( (x_1 - x_0) / (y_1 - y_0) );
 
  if( abs( x - x_1) <= tol )
      % If the absolute value of the difference is less than or 
      % equal to the tolerance, return x
      
      ret = x;
      
  elseif( abs( x - x_1 ) > tol && N > j )
      % If the absolute value of the difference is less than the tolerance,
      % replace x_0 with x_1, y_0 with y_1, rinse and repeat until 
      % the number of iterations has been reached
      
      x_0 = x_1;
      y_0 = y_1;
      x_1 = x;
      y_1 = g( x_1 );
      
  else
      % If number of iterations (N) has been reached and still not within tol
      % return this error message
      disp("Method Failed. Maximum Iterations Exceeded.\n")
      
  endif
 endfor


endfunction