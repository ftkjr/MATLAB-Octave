%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aikensonepoint( p_1, f, n) %
% Written by Fred Kaesmann Jr Date: 2018/10/7        %
% Assumptions: f is continuous %
% INPUT: Initial point, p_1; Some function, f; 
%         Number of iterations, n;
% OUTPUT: Array of points from Aiken's Delta Squared 
%           starting at p_1, for n iterations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ret = Aikensonepoint( p_1, f)

  p(1) = p_1; % set p_1 as first value in p array
 
 for i = 1:3

   p(i+1) = f( p(i)); % next value in sequence is f of first value
   i++;
   
 endfor
 
  disp(p(1:3)) % display array of values p(1:n)
  
endfunction