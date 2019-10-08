%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% QuadraticAlternate( a, b, c ) %
% Written by Fred Kaesmann Jr Date: 2018/10/20        %
% Assumptions: There exists some polynomial with 
%     coefficients a*x^2+b*x+c
% INPUT: Coefficients a, b, and c; %
% OUTPUT: Two roots, root1 and root2 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [root1 root2] = QuadraticAlternate( a, b, c )
  
  root1 = 2*c/(-b-sqrt(b^2-4*a*c));
  
  root2 = 2*c/(-b+sqrt(b^2-4*a*c)); 
endfunction
