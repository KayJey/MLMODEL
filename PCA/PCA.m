function [U,S] = myPCA(X)
  
  co_var_mat= cov(X);
  [U,d] = eig(co_var_mat,'vector');
  [d, ind] = sort(d,'descend');
  U = U(:,ind);
  S=d;

  
  
  
  endfunction
