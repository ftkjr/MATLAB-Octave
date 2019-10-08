%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kaesmann_B(n,k) %
% Written by Fred Kaesmann Jr Date   2018/9/25      %
% INPUT: n: # of elements; k: size of groups %
% OUTPUT: The number which n elements can be combined into k sized groups%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = Kaesmann_B(n,k) % How many different ways can n elements be combined into k sized groups               
    
      kfloor = floor(k);
      nfloor = floor(n);
      kround = round(k);
      nround = round(n);
      m = k-n;
       
  if( k == 0 || k == n )  %setting initial conditions
    f = 1;
    
  elseif( n < 0 || k < 0 ) %no negative numbers
  
    disp("No negatives!") 
    
    elseif( k > n ) %k cannot be larger than n
          
    printf("\nWhy would you do that? You know as well as I do that n must be at least as large as k.\nPlease add at least %d to n, or subtract at least %d from k.\n", m, m)
  
  elseif( n - nround != 0 || k - kround != 0 ) %no decimals
  
    p = Kaesmann_B(nround,kround);
    i = Kaesmann_B(nfloor,kfloor);
   printf("\nWhat's with the decimals?\nMaybe you meant Kaesmann_B( %d , %d ) = %d, or perhaps Kaesmann_B( %d , %d ) = %d?\n", nround,kround,p,nfloor,kfloor,i)
  
  elseif( n>15) %the recursive function takes too much time as n gets large
   
    e = factorial(n-k);
    g = factorial(n);
    h = factorial(k);   
      
    v = g / (h * e);
    printf("\nFor n sufficiently large, recursive is too long.\nKaesmann_B(n,k) for n = %d and k = %d using ((n!)/(k!*(n-k)!), \nKaesmann_B( %d , %d ) = %d.\n", n,k,n,k,v)
      
  else  %the money maker
      
    f = Kaesmann_B(n-1,k-1) + Kaesmann_B(n-1,k); 
    
  endif
   
endfunction %fin
