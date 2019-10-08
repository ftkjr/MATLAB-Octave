function [c] = eigenCheck(matrix, lambda)
  
  lambda_I = eye(length(matrix)) * lambda;
  newmatrix = matrix - lambda_I
  
  reducedNM = rref(newmatrix)
  reduced2 = reducedNM'
  c = reduced2(:,1);
  
endfunction
