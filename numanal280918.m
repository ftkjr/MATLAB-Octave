g = inline('sin(x)');
dg = inline('cos(x)');
colorNumber = 2;
x0 = -4;
x1 = 8;
y0 = -2;
y1 = 2;
nx = 500;
dx = (x1 - x0)/nx;
xc = -1*ones(1,nx+1);
for i = 1:nx+1
  x = x0 + (i-1)*dx;
  [z_curr, stepCount, normCurr] = Newton(g,dg,x, 1000, 1e-8, 1e10);
  %If Newton did not converge (stepCount > maxSteps = 1000), or diverged to 
  %infinity (normCurr > 1e10), then set xc to 1.
  if( stepCount > 1000 || normCurr > 1e10)
    xc(i) = 1;
  else
    %Determine the index corresponding to where we ended up 
    j = 1 + floor( (z_curr - x0)/dx );
    if( j >= 1 && j <= nx)
      if( xc(j) == -1)
        xc(j) = colorNumber;
        xc(i) = colorNumber;
        colorNumber++;
      else
        xc(i) = xc(j);
      endif
    else
      xc(i) = 1;
    endif
  endif
endfor
RGB = prism(colorNumber);
hold on
for i = 1:nx+1
  plot(x0 + (i-1)*dx, 0, 'color', RGB(xc(i), :))
endfor
x = x0:dx:x1;
y = zeros(1,length(x));
for i = 1:length(x)
  y(i) = g(x(i));
  if( y(i) < y0)
  y(i) = y0;
  elseif( y(i) > y1)
    y(i) = y1;
  endif
endfor
plot(x,y, 'k-')