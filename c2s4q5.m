tol = 1e-5;
N = 500;
a = inline(' e^x + 2^-x + 2*cos(x) - 6');
da = inline(' e^x - (log(2)/(2^x))- 2*sin(x)');
ax_0 = 1;
aseed = Newton( a, da, ax_0, N, tol, 100)

c = inline('2*x*cos(x) - (x-2)^2');
dc =  inline('-2*x*sin(x) - cos(x) -x-2');
cx_0 = 2;
cseed = Newton(c, dc, cx_0, N, tol, 1000)


questione = inline('(x-2)^2 - log(x)');
de = inline('2*(x-2) - (1/x)');
eseed = Newton(questione, de, ax_0, N, tol, 100)

