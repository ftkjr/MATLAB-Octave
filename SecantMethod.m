%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SecantMethod(x_0, x_1, g, tol, N) %
% Written by Fred Kaesmann Jr Date: 2018/09/29        %
% Assumptions: g has a root at x; g is differentiable around x;
%                 x_0 and x_1 are sufficiently close to x
% INPUT: Values: x_0 and x_1; some function: g; desired accuracy: tol;
%         maximum number of iterations: N
% OUTPUT: Approximation of x near exact fixed point. Or failure. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = SecantMethod(x_0, x_1, g, tol, N)
  
  y_0 = g( x_0 );
  y_1 = g( x_1 );
  
  for j = 1:N
    x = x_1 - y_1 * ( (x_1 - x_0) / (y_1 - y_0) );
    
    if( abs( x_1 - x_0 ) <= tol )
      f = x;
    elseif( abs( x_1 - x_0 ) > tol && N > j )
      x_0 = x_1;
      y_0 = y_1;
      x_1 = x;
      y_1 = g(x_1);
      
    else
      disp("This computer will self destruct in...\n5...\n4...\n3...\
      \n2...\n1...\nPlease try again.\n")
      
    endif
  endfor
   
endfunction
