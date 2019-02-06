%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Newton( f, df, z_init, maxSteps, zeroTol, normBailout) %
% Written by Fred Kaesmann Jr Date: 2018/09/28        %
% Assumptions: The function, f, is continuous; 
% The derivative of f, df, exists and is continuous; 
% INPUT: Some function, f, and its derivative, df; initial value: z_init;
%         tolerance: zeroTol; function stop value: normBailout
% OUTPUT: The zero of some function %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [z_curr, stepCount, normCurr, df_zero] = Newton( f, df, z_init, maxSteps, zeroTol, normBailout) 
  stepCount = 1;
  tolerance = zeroTol + 1;
  normCurr = abs( z_init );
  z_curr = z_init;
  df_zero = false;
  machineZero = 1e-15; 
    while( stepCount <= maxSteps && tolerance > zeroTol && normCurr <= normBailout )
       if(df(z_curr) == 0 || abs(df(z_curr)) < machineZero)
        df_zero = true;
        return;
      endif
     z_next = z_curr - f(z_curr)/df(z_curr);
      stepCount++;
      tolerance = abs(z_next - z_curr);
      z_curr = z_next;
      normCurr = abs( z_curr );
    endwhile

endfunction
