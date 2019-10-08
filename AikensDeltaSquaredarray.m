function a = AikensDeltaSquaredarray( x0, f, its )
n=1;


while n <= its 
 %Fixed point iteration sequence
 x1 = f(x0);
 x2 = f(x1);
   
a(n) = x0-(x1-x0)^2/(x2 - 2*x1 +x0);
x0 = a(n);
n++;
endwhile
disp(a);
endfunction
