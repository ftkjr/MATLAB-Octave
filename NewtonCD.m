%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NewtonCD( f, df, lowerbound, upperbound, increment, maxSteps, tol, bail) %
% Written by Fred Kaesmann Jr Date: 2018/11/01        %
% Assumptions: f is at least once differentiable%
% INPUT: Some function, f, and its derivative, df; lower and upper bound  
% for x and y, and the increments between them; FOR NEWTONS METHOD: max steps, tol,
% and bail
% OUTPUT: Pretty pretty picture ( a diagram of the number of steps to zero)%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function  NewtonCD(f,df, increment, maxSteps,tol,bail)
% Sofia function
%f = inline('19*x^5+14*x^4+6*x^3+9*x^2+x');
%df= inline('95*x^4+56*x^3+18*x^2+1');
% Fred Function
%f = inline('6*x^3+18*x^2+5*x+4');
%df= inline('18*x^2+36*x+5');

% Initializing Variables
  x = 2:increment:7;
  y = -9:increment:-4;
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
endfunction