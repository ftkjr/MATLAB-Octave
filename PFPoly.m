%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PFPoly(xvec, Bounds, Coefficients) %
% Written by Fred Kaesmann Jr Date: 2018/11/02        %
% Assumptions: %
% INPUT: A vector of x values, xvec; 
% A matrix of the bounds of your piecewise function, Bounds
% A matrix of the coefficients of your piecewise function, Coefficients
% OUTPUT: A matrix, y, of piecewise values (?),
% plus a nice graph
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y] = PFPoly(xvec, Bounds, Coefficients)
  % Initializing matrix y
  y = zeros(1, length(xvec));
  for i = 1:length(xvec)
   % Iterate for the number of values in xvec
   for j = 1: rows(Bounds)
   % Iterate for the number of rows in matrix Bounds
    bound = Bounds(j,:);
   % Set Leftbound as min value in jth row of matrix Bounds
    Leftbound = min(bound);
   % Set Rightbound as max value in jth row of matrix Bounds
    Rightbound = max(bound);
     if( Leftbound <= xvec(i) && xvec(i) < Rightbound )
     % If xvec(i) is within the bounds then do this:
      for k = 1:columns(Coefficients)
        % Compute your piecewise matrix
        y(i) += Coefficients(j,k)*xvec(i).^(length(Coefficients)-k); 
       endfor
      endif
    endfor
  endfor
  % Plot that shit, yo
  plot(xvec,y)
endfunction % fin