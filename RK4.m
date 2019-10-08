%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RK4(f, t0, y0, h, maxsteps) %
% Written by Fred Kaesmann Jr Date: 2018/12/07        %
% Assumptions: %
% INPUT:  %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y] = RK4(f, t0, y0, h, maxsteps)
   y = zeros(maxsteps+1,1);
  y(1) = y0;
  t = t0;
  for i = 1:maxsteps
    k1 = f(t,y(i));
    k2 = f(t+h/2,y(i)+k1*(h/2));
    k3 = f(t+h/2,y(i)+k2*(h/2));
    k4 = f(t+h, y(i) + k3*h);
    y(i+1) = y(i) + (h/6)*(k1 + 4*k2 + k3);
    t = t + h;
  endfor
endfunction
