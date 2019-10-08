%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% bisectionwhile( leftbound, rightbound, f, tol) %
% Written by Fred Kaesmann Jr Date: 2018/mm/dd        %
% Assumptions: f is continuous over the left and right bounds %
% INPUT: Left bound; Right bound; Some function: f;  
%         Desired tolerance, tol;
% OUTPUT:  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ret = bisectionwhile( leftbound, rightbound, f, tol )
  m = (leftbound + rightbound) /2;
  err = abs( rightbound - leftbound )/2;
  L = f( leftbound );
  while( err > tol )
    m = (leftbound + rightbound) /2;
    M = f( m );
    err = err /2;
      if( M == 0 )
        ret = M;
      elseif( L*M < 0 )
        rightbound = m;
      else
        leftbound = m;
        L = M;
      endif
      ret = m;
    endwhile   
endfunction
