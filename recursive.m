%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% recursive() written by Fred Kaesmann Jr Date        %
% INPUT: Some recursive function f, some value x, 
%        for n iterations %
% OUTPUT: The value of the recursive function  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function recursive(f, n)
  for i = [1:n]
    inline(f('i')+f('i-1'))
  endfor
endfunction
