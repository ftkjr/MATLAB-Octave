%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tea Time Numerical Analysis Chapter 2, ss1, q2     %
% Fred Kaesmann %
% Function Name: Foo                  %                   
% INPUT: Some number x %
% OUTPUT:  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function res = foo(x)
  if (x<1)
    res = 0;
  else
    half = x/2;
    floorhalf = floor(half);
    if (half == floorhalf)
      res = 0 + foo(floorhalf)
    else
      res = 1 + foo(floorhalf);
    endif
  endif
endfunction

