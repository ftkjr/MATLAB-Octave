%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FPIterations( x_0, f, iterations ) %
% Written by Fred Kaesmann Jr Date: 2018/10/07        %
% Assumptions: f is a continuous function, f has a fixed point %
% INPUT: Initial value, x_0; Some function, f;  
%       Number of iterations, iterations;
% OUTPUT: Increasingly accurate approximations of some point %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ret = FPIterations( x_0, f, iterations )
  p(1) = x_0;
  for i = 1:iterations
    p(i+1) = f( p(i) );
  endfor
  disp(p(1:iterations))
endfunction
