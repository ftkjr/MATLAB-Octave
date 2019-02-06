%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EM( f, t0, x0, h, maxsteps) %
% Written by Fred Kaesmann Jr Date: Year/mm/dd        %
% Assumptions: You don't know that EM means Eulers method. or that its pronounced oilers%
% INPUT: Some function, f; initial points, t0 & x0; stepsize, h; and number of times, maxsteps %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y] = EM(f,t0,y0,h,maxsteps)
  %initialize x matrix
 y = zeros(maxsteps+1, 1);
  y(1) = y0;
  t = t0;
  for i = 1:maxsteps 
    
    y(i+1) = y(i)+f(t, y(i))*h;
    t = t+h;
  endfor
  
% plot(t, y, 'k-'); % plot this shit
endfunction
%thanks dave