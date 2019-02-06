%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Quadratic( a, b, c ) %
% Written by Fred Kaesmann Jr Date: 2018/10/21        %
% Assumptions: a, b, and c are coefficients of
%         some quadratic function a*x^2+b*x+c
% INPUT: Coefficients a, b, and c  %
% OUTPUT: Two roots, root1 and root2  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ root1 root2 ] = Quadratic( a, b, c)
  
  root1 = (-b + sqrt(b^2 - 4*a*c))/2*a;
  
  root2 = (-b - sqrt(b^2 - 4*a*c))/2*a;
endfunction
