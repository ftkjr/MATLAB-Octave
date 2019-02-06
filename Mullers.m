%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Mullers( f, p0, p1, p2 ) %
% Written by Fred Kaesmann Jr Date: Year/mm/dd        %
% Assumptions: %
% INPUT:  %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root = Mullers( f, p0, p1, p2, maxiterations, tol)
  %Initializations
  n=1;
  while n < maxiterations 
    
   s0 = f(p0) - f(p2);
   s1 = f(p1) - f(p2);
   h0 = p0 - p2;
   h1 = p1 - p2;
   h2 = p0 - p1;
  
   c = f(p2);
   b = ( (h0)^2*s1 - (h1)^2*s0) / (h0*h1*h2);
   a = ( h1*s0 - h0*s1) / (h0*h1*h2);
   p3  = p2 - QuadraticAlternate(a,b,c)
   n++;
   root = p3;
   if( abs(p3-p2)<= tol)
   return;
   endif
   p0 = p1;
   p1 = p2;
   p2 = p3;
   
   endwhile
 
endfunction
