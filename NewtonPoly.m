%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% [z_curr, stepCount, normCurr, df_zero] = NewtonPoly( c, x_0, maxSteps, zeroTol, normBailout) %
% Written by Fred Kaesmann Jr Date: 2018/10/12        %
% Assumptions: c is a vector of length 1 of the coefficients of some polynomial, p; 
%   Polynomial, p, is differentiable; p has either real or complex zeros;
% INPUT: A vector of length 1 of coefficients of some polynomial, c;  
%   Point for evaluation, x_0; Maximum steps, maxSteps; 
%   acceptable zero tolerance, zeroTol; stop function if x_0 crosses normBailout;
% OUTPUT: Zero of the polynomial %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [z_curr, stepCount, normCurr, df_zero] = NewtonPoly( c, x_0, maxSteps, zeroTol, normBailout)
  % Initializing
  machineZero = 1e-15; 
  df_zero = false;  % Cannot use Newton's method when the function has no derivative
  stepCount = 1;    % Initializing the step count
  tolerance = zeroTol + 1; 
  normCurr = abs( x_0 );
  z_curr = x_0;
  while(stepCount <= maxSteps && tolerance > zeroTol && normCurr <= normBailout)
          % Run Newton's Method as long as the steps are less than max allowed,
          % and greater than the tolerance we're looking for, and if the zero 
          % is within the bounds we set.
    [f_at_z_curr df_at_z_curr] = Horner( c, z_curr);
       % Use Horner's Method to find the value of p(x_0) dp(x_0)
     if( df_at_z_curr == 0 || abs(df_at_z_curr) < machineZero ) 
      % If the derivative is zero or close enough for computer purposes, 
      % don't execute  
        df_zero = true;
        return;
     endif
      z_next = z_curr - f_at_z_curr/df_at_z_curr;
      stepCount++;
      tolerance = abs( z_next - z_curr );
      z_curr = z_next;
      normCurr = abs( z_curr );
  endwhile
endfunction
