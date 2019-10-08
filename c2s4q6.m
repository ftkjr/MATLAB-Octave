tol = 1e-5;
N = 500;
a = inline(' e^x + 2^-x + 2*cos(x) - 6');
ax_0 = 1;
aseed = SeededSecant(ax_0, a, tol, N)



c = inline('2*x*cos(x) - (x-2)^2');
cx_0 = 2;
cseed = SeededSecant(cx_0, c, tol, N)


questione = inline('(x-2)^2 - log(x)');
eseed = SeededSecant(ax_0, questione, tol, N)
