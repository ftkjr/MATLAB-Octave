function s = stirling(n,k)
  if (n<k)
    s=0;
 elseif (n==k)
    s=1;
  elseif (k==1)
    s=1;
  else
    for c = 1:n
    s = stirling(n-1,k-1)+k*stirling(n-1,k);
    endfor
  endif
 endfunction
 