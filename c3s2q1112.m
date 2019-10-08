f=inline('sqrt(2)^x');
p0=inline('(x-1)*(x-2)*(x-3)');
p1=inline('x*(x-2)*(x-3)');
p2=inline('x*(x-1)*(x-3)');
p3=inline('x*(x-1)*(x-2)');

p00=p0(0);
p11=p1(1);
p22=p2(2);
p33=p3(3);

L3x=inline('(p0(x)/p00)*1+(p1(x)/p11)*f(1)+(p2(x)/p22)*f(2)+(p3(x)/p33)*f(3)');
L315=L3(p00,p11,p22,p33,1.5)
f15=f(1.5)
error = abs(f15-L315)
f4=inline('log(2)^4 * 2^(x/2-4)')
f43=f4(3)
xs=inline('x*(x-1)*(x-2)*(x-3)/factorial(4)')
xs15=xs(1.5)
sss=xs15-f43
hkjh=.05*sss
abs(hkjh)>error