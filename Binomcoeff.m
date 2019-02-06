%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Binomcoeff(n,k) %
% Written by Fred Kaesmann floorkr Date   2018/9/25      %
% INPUT: n: # of elements; k: size of groups %
% OUTPUT: The number which n elements can be combined into k sized groups%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = Binomcoeff(n,k) % How many different ways can n elements be combined into k sized groups               
      absn = abs(n); %absolute value of n
      absk = abs(k); %absolute value of k
      floork = floor(k);  %round k down 
      roundk = round(k);  %round k
      m = k-n; %difference between k and n
      roundn = round(n); %round n
      floorn = floor(n); %floor n
  
 if( k == 0 || k == n )  %setting initial conditions
    f = 1;
    
    elseif( n < 0 || k < 0 )
    absbin = Binomcoeff(absn, absk);
      printf("No Negative Numbers!\nDid you mean Binomcoeff( %d , %d ) = %d?\n", absn, absk, absbin)
    
  elseif( k > n ) %k cannot be larger than n
          
              printf("\nWhy would you do that? You know as well as I do that n must be larger than k.\nPlease add at least %d to n, or subtract at least %d from k.\n", m, m)
       
  elseif( roundn != floorn || roundk != floork && (n - roundn !=0 || k - roundk != 0) ) %error messages for rounding up
       disp(roundn)
       disp(roundk)
       roundbin = Binomcoeff(roundn,roundk);
      floorbin = Binomcoeff(floorn,floork); 

    printf("\nWhat's with the decimals?\nMaybe you meant Binomcoeff( %d , %d ) = %d, or perhaps Binomcoeff( %d , %d ) = %d?\n", roundn,roundk,roundbin,floorn,floork,floorbin)
  
  elseif( (round(n) == floor(n) || round(k)== floor(k)) && (n - round(n) !=0 || k - round(k) != 0) ) %error message for rounding down
     p = Binomcoeff(o,l);
      printf("\nNo decimals!\nDid you mean Binomcoeff( %d , %d ) = %d ?\n", o,l,p)
   
   elseif( n>15) %the recursive function takes too much time as n gets large
   
      e = factorial(n-k);
      g = factorial(n);
      h = factorial(k);   
      
      v = g / (h * e);
      printf("\nFor n sufficiently large, recursive is too long.\nBinomcoeff(n,k) for n = %d and k = %d using ((n!)/(k!*(n-k)!), \nBinomcoeff( %d , %d ) = %d.\n", n,k,n,k,v)
      
  else  %the money maker
      
    f = Binomcoeff(n-1,k-1) + Binomcoeff(n-1,k); 
    
  endif
   
endfunction
