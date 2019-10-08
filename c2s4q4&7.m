tol = 1e-5;
tol2 = 1e-10;
N = 500;
a = inline(' e^x + 2^-x + 2*cos(x) - 6');
asecant = SecantMethod(1,2, a, tol, N)
asecant10 = SecantMethod(1,2, a, tol2, N);
abs(asecant-asecant10) <= 1e-5;

b = inline('log(x-1) + cos(x-1)');
bsecant = SecantMethod(1.3,2, b, tol, N);
bsecant10 = SecantMethod(1.3,2, b, tol2, N);
abs(bsecant-bsecant10) <= 1e-5;

c = inline('2*x*cos(x) - (x-2)^2');
csecant = SecantMethod(2,3, c, tol, N)
csecant10 = SecantMethod(2,3, c, tol2, N);
abs(csecant-csecant10) <= 1e-5;

d = inline('2*x*cos(x) - (x-2)^2');
dsecant = SecantMethod(3,4, d, tol, N);
dsecant10 = SecantMethod(3,4, d, tol2, N);
abs(dsecant-dsecant10) <= 1e-5;

questione = inline('(x-2)^2 - log(x)');
esecant = SecantMethod(1,2, questione, tol, N)
esecant10 = SecantMethod(1,2, questione, tol2, N);
abs(esecant-esecant10) <= 1e-5;

f = inline('(x-2)^2 - log(x)');
fsecant = SecantMethod(e,4, f, tol, N);
fsecant10 = SecantMethod(e,4, f, tol2, N);
abs(fsecant-fsecant10) <= 1e-5;
