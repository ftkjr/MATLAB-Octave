% Fred Kaesmann KaesmannNCT.m 
% Numerical Analysis Exam 2 
% October 31, 2018
% Inputs: Function and derivative, max steps,
% zero tolerance, bailout, increments for x and y,
% vectors x and y, and matrix ic

% Function and Derivative
f = inline('x^3-3^x-2^-x+e^x')
df = inline('(-log(3)*3^x+log(2)/2^x+3*x^2)+e^x')

% Newton function variables
maxSteps = 100;
tol = 1e-10;
bail = 10000;

% x and y increment and bounds
increment = 1;
lowerbound = -10;
upperbound = 10;
x = lowerbound:increment:upperbound;
y = lowerbound:increment:upperbound;
ic = zeros(length(x), length(y));

% Initializing wait bar, have some patience
counter = 0;
if( increment > .5)
% Quick wait message
  h =  waitbar(counter/(length(x)*length(y)),"Hold up\n-Nate Dogg");
elseif( increment <= .5 && increment > .1)
% Moderate wait message
  h =  waitbar(counter/(length(x)*length(y)),"Good things come to those who wait");
else
% Long wait message, and my personal favorite
  h =  waitbar(counter/(length(x)*length(y)),"Quotus quisque reliquus qui rem \
 publicam vidisset!\n'How few were left who had seen the old republic!'\n-Tacitus");
endif
% Gettin loopy
for j = 1: length(y)
  % Y are we doing this, xD
  for k = 1:length(x)
    % X loop
    x_i = x(k) + y(j)*I
    [zero steps normCurr df_zero] = Newton(f,df,x_i,maxSteps,tol,bail);
    if( steps < maxSteps && normCurr < bail && df_zero == false )
      % If these conditions are met, fill ic with steps
      ic(j,k)= steps;
    endif 
 % Wait a second
 counter++;
 waitbar(counter/(length(x)*length(y)),h)
  endfor
 endfor
 
 % Here, let me close that wait bar for you
 close(h)
 
 % Van Gogh ain't sh*t
  pcolor(ic)
  shading flat
  colormap(jet)
  colorbar("EastOutside")
  ah = gca;
  set(ah, 'XTick', [1 length(x)/2 length(x)]);
  set(ah, 'YTick', [1 length(y)/2 length(y)]);
  set(ah, 'XTickLabel', [min(x) (min(x) + max(x))/2 max(x)]);
  set(ah, 'YTickLabel', [min(y) (min(y) + max(y))/2 max(y)]);
% Fin