#https://en.wikibooks.org/wiki/Octave_Programming_Tutorial/Getting_started
#x=linspace(0, 15, 16);
#y=ceil(x);
#plot(x,y);

#x = linspace(0, 2*pi);
#a=cos(2*x);
#b=sin(4*x);
#c=2*sin(x);
#figure;
#plot(x,a);
#hold;
#plot(x,b);
#plot(x,c);
#plot(x, a+b+c);

#exercise
#plot absolute value function for x in [-5,5]

x=(-1:1);
y=sin(x);
#z=1-x.*x;
figure;
plot(x,y.*y);
#hold;
#plot(x,z);