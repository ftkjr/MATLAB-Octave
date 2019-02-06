%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% IEM(f,t0,y0,h,maxsteps) %
% Written by Fred Kaesmann Jr Date: Year/mm/dd        %
% Assumptions: %
% INPUT:  %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y] = EM_I(f,t0,y0,h,maxsteps)
  y = zeros(maxsteps+1,1);
  y(1) = y0;
  t = t0;
  for i = 1:maxsteps
    k1 = f(t,y(i));
    k2 = f(t+h,y(i)+k1*h);
    y(i+1) = y(i) + (h/2)*(k1 + k2);
    t = t + h;
  endfor
endfunction
