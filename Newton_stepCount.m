g = inline('sin(x)');
dg = inline('cos(x)');
x = -4:.05:8;
y = zeros(1, length(x));
for i = 1:length(x)
  [z_curr, stepCount, normCurr] = Newton(g, dg, x(i), 1000, 1e-8, 1e10);
  y(i) = stepCount;
endfor
plot(x,y)
