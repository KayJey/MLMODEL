function [Xmu,mu]=subtractMean(X)
  
  mu = mean(mean(X));
  Xmu = X-mu;
  
  
  endfunction
