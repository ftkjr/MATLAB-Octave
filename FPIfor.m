%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FPIfor( f, x_0, I, tol) %
% Written by Fred Kaesmann Jr 
% Date: Sometime late September, 2018        %
% Assumptions: f is differentiable; f has a fixed point, x; 
% x_0 is in a neighborhood (x - s, x + s) where the magnitude 
%  of f prime is less than one. 
% INPUT: Some function, f; Initial value, x_0; Desired accuracy, tol; 
% Maximum number of iterations, I;
% OUTPUT: Approximation of x near exact fixed point. Or failure. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [x_0, i] = FPIfor( f, x_0, tol, maxiterations )
  
  for( i = 1:maxiterations)
    x= f( x_0 );
      % x_1 = f( x_0), x_2 = f( x_1), etc
    if( abs( x - x_0 ) <= tol)
     % if the abs diff between x_n and x_(n-1) < tol, 
     % then return x
      x_0 = x;
      return;
      endif
      % replace x_0 with x and repeat until max iterations
      x_0 = x;
      i++;
  endfor   
 disp('Either no fixed point or insufficient iterations');  %error message
endfunction
