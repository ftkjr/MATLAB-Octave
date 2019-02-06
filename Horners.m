%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Horner( c, x ) %
% Written by Fred Kaesmann Jr Date: 2018/10/12        %
% Assumptions: c is a length 1 vector;  
% Polynomial, y, and its derivative, dy, 
% are continuous at point x
% INPUT: Length 1 vector of coefficients of some polynomial, y;
%  Point, x, at which to evaluate the polynomial
% OUTPUT: Value of y(x) and dy(x) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y, dy] = Horners( c, x )
  % Octave will automatically generate a fault if an undefined 
  % vector is passed. This function needs to catch a length 1 vector,
  % representing a constant polynomial.
  y = c(1); % y starting value
 
  if( length(c)==1)   
   dy = 0;
    return;   %Derivative of a constant is zero
  endif
  dy = c(1); % dy starting value
  for i = 2:length(c) - 1
    y = x*y + c(i);
    dy = x*dy +y;
  endfor
endfunction