
function [y] = PF(x)
  y= zeros(1,length(x));
  for i = 1:length(x)
    if( x(i) <= 0 )
      y(i) = e.^x(i);
    elseif( x(i) > 0 && x(i) < 3 )
      y(i) = x(i) +1;
    elseif( x(i) >= 3 && x(i) < 7 )
      y(i) = 2./x(i);
    else
      disp("erroneous condition");
    endif
  endfor
endfunction
