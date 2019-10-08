function [c] = eigenCheck(matrix, lambda)
  
  lambda_I = eye(length(matrix)) * lambda;
  newmatrix = matrix - lambda_I;
  
  reducedNM = rref(newmatrix)
  return(reducedNM)
  #c = reducedNM(:,length(reducedNM));
  
endfunction
