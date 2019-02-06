%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Steffensenwhile( x_0, f, tol, N ) %
% Written by Fred Kaesmann Jr Date: 2018/28/09        %
% Assumptions: Fixed point iteration converges to  
%              a fixed point of f with initial value X_0         
% INPUT: Initial value: x_0; Function: f; 
%         Desired accuracy: tol; Max iterations: N;
% OUTPUT: Approximation of x near exact fixed point. Or failure. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x0, step] = Steffensenwhile( xin, f, tol, N)
 step = 1;
 x0 = xin;
while (step <= N)
  x1 = f(x0);
  x2 = f(x1);
  if( abs(x2-x1) <= tol)
  x0 = x2;
  return;
endif
x = x0-(x1-x0)^2/(x2 - 2*x1 +x0);
if( abs(x-x0) <= tol)
x0=x;
return;
endif
x0 = x;
step++;
endwhile
printf("max steps exceeded\n");
endfunction