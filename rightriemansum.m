function [I] = R(f,a,b,n)
  I = 0;
  dx = (b-a)/n;
  for i=1:n;
    I = I+dx*f(a+i*dx);
  endfor
endfunction
