%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Steffensen( x_0, f, tol, maxits ) %
% Written by Fred Kaesmann Jr Date: 2018/28/09        %
% Assumptions: Fixed point iteration converges to  
%              a fixed point of f with initial value X_0         
% INPUT: Initial value: x_0; Function: f; 
%         Desired accuracy: tol; Max iterations: maxits;
% OUTPUT: Approximation of x near exact fixed point. Or failure. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x_0, steps] = Steffensen(x_0, f, tol, maxits)
 
 for steps = 1:maxits
    x_1 = f( x_0 ); %set x_1 = f of x_0
    x_2 = f( x_1 ); %set x_2 = f of x_1
  if( abs( x_2-x_1) <= tol )   
      x_0 = x_2;
      return;
   endif
      %x = x_0 - (x_1-x_2)^2/(x_2-2*x_1+x_0); %aiken's delta squared
     x = x_0-(x_1-x_0)^2/(x_2 - 2*x_1 +x_0);
   if( abs(x - x_0) <= tol)
       x_0 = x;
       return;
    endif
    steps++;
     x_0 = x;
     %The Ends
  endfor
endfunction
