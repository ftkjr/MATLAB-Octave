%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sumof(from, to, func) %
% Written by Fred Kaesmann Jr Date: 2018/10/14        %
% Assumptions: %
% INPUT: Initial value, from; End value, to; 
%   Some function, func;
% OUTPUT: Summation of values of a function, func,  
%         from 'from' to 'to'. Clever, I know. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function sum = sumof(from, to, func)
    
 % Error messages 
  if( from == to )
    disp("Initial and End values cannot be equal");
    return;
  elseif( from > to )
   disp("Cannot go from larger to smaller");
    return;
  endif
  
   % Initializing variables and formatting 
   sum = 0;
   format long
      
  while from <= to 
    % run a summation starting at 
    % 'from' and ending with 'to'
    sum = sum + func(from);
    from++;
  endwhile

  disp(sum);

  endfunction
