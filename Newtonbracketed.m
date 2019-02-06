

function [ x, steps, normCurr, bracketExceptions  ] = Newtonbracketed( g, dg, a, b, TOL, N )
  bracketExceptions=0;
  steps = 1;
  A = g(a);
  B = g(b);
  while steps < N
    b;
    x = b - B / dg(b);
    if( x < min( [a,b] ) || x > max( [a,b] ) )
      printf("[ % 5.12f                     % 5.12f   ] % 5.12f\n",  a,b,x)
      bracketExceptions++;
      x = b + ( a - b ) / 2;
    endif
    g(x);
    if( abs( x - b ) < TOL )
      disp(" ");
      return;
    endif
    X = g(x);
    if( (B < 0 && X > 0) || (B>0 && X < 0) ) 
      a = b;
      A = B;
    endif
    b = x;
    B = X;
    printf("[ % 5.12f   % 5.12f   % 5.12f   ]\n",  a,x,b)
    steps++;
    normCurr = abs( x );
    
  endwhile
  x = "Metod failed";
endfunction
