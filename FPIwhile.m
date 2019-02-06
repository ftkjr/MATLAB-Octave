%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FPIwhile( f, x_0, tol, maxiterations) %
% Written by Fred Kaesmann Jr 
% Date: Sometime late September, 2018        %
% Assumptions: f is differentiable; f has a fixed point, x; 
% x_0 is in a neighborhood (x - s, x + s) where the magnitude 
%  of f prime is less than one. 
% INPUT: Some function, f; Initial value, x_0; Desired accuracy, tol; 
% Maximum number of iterations, I;
% OUTPUT: Approximation of x near exact fixed point. Or failure. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x0, step] = FPIwhile( f, x0, tol, maxiterations )
  step = 1; %initializing counter
  while (step <= maxiterations)
    x_1 = f(x0); %x1 is f of x0
    if( abs( x_1 - x0 ) <= tol ) 
    %if error is within the tolerance, return values
      return;
    endif
    x0 = x_1; %replace x0 with x1, rinse, repeat
    step++;
  endwhile
  disp("Max iterations exceeded\n");
endfunction
