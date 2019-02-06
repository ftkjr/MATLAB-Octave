%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% npowersof( startpower, finalpower, num ) %
% Written by Fred Kaesmann Jr Date: 2018/09/30        %
% Assumptions: When you assume it makes an ass
%               out of u and me 
% INPUT: Initial power: startpower; Final power: finalpower;  
%           Some number: num
% OUTPUT: The nth_power and the values of the 
%               nth_power of some number (num) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ret = npowersof( startpower, finalpower, num )

  while ( startpower < finalpower + 1 ) 
    %run this from the starting power to the final power
    nth_power = startpower++
    disp(num ^ startpower) 
    
  endwhile
endfunction