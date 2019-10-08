%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FunctionName() %
% Written by Fred Kaesmann Jr Date: Year/mm/dd        %
% Assumptions: %
% INPUT:  %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y] = ODEComparison( t, y)

EMs = EM(ode,t0,y0,h,iterations)
IEMs = EM_I(ode,t0,y0,h,maxsteps)
Sims = Simpsons(ode, t0, y0, h, maxsteps)
RK4s = RK4(ode, t0, y0, h, maxsteps)

 printf("    time    Euler   ImpEul    Simpson   RK$   True ")
for i = 1:maxsteps+1
  printf("$ 13.8f    $ 13.8f    $ 13.8f    $ 13.8f    $ 13.8f\n", t0+(i-1)*h, Ems(i), IEMs(i),  

endfor
figure
subplot(2,2,1)
  hold on
  plot(t,ts,"k-") % True solution
  plot(t,EMs,"r--")
  title("True vs Euler");
subplot(2,2,2)
  hold on
  plot(t,ts,"k-") % 
  plot(t,IEMs,"b--")
  title("True vs Improved Euler");
subplot(2,2,3)
  hold on
  plot(t,ts,"k-") % 
  plot(t,Sims,"g-.")
  title("True vs Simpson's");
subplot(2,2,4)
  hold on
  plot(t,ts,"k-") % 
  plot(t,RK4s,"y-.")
  title("True vs RK4");

print -dpng multi.png