function [z]=projectData(X,U,k)
    
    s=size(X)(1);
    U=U(:,1:k);
    
    %product_Array_X=repelem(U(1,1),s); 
    %product_Array_Y=repelem(U(2,1),s);
    product_Array=[];
    for i = 1:k
     
      for j = 1:2
        product_Array=[product_Array [repelem(U(j,i),s)]];
    endfor
    endfor
    %disp(product_Array)
    %product_Array=[product_Array_X product_Array_Y];
    
    z=X*U;
  
  endfunction
