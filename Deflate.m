%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Deflate( vector_c, root, tol ) %
% Written by Fred Kaesmann Jr Date: 2018/10/21        %
% Assumptions: Inputs are a vector of coefficients and a root of some polynomial, p(x)%
% INPUT: Vector of coefficients of some polynomial p(x), vector_c; One root of p(x), root; 
%         zero tolerance for messy decimals, tol;
% OUTPUT: Vector of "deflated" polynomial, q(x), or p(x) = q(x) * (x - root) %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function dc = Deflate( vector_c, root, tol)
%Initializations
  dc(1) = vector_c(1); %set first value of deflated polynomial to the first of the original
  n=1; %initializing the while counter
  steps= length(vector_c); %number of iterations is limited by the length of vector, vector_c
  while n<steps   
    % do this
    dc(1+n) = dc(n)*root + vector_c(n+1);
    n++;   
  endwhile
  % Error message    
  if( dc(length(dc)) > tol)
   % If the last value of vector dc isn't 0 to within tolerance, display error  
    dc = "Error. Point is not a root of your polynomial";
  endif
end %fin