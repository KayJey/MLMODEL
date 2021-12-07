function [idx,Cx]=mykmeans(filename,k)
  pkg load statistics
  load(filename)
  D=Data;
  s=size(D);
  index1=randperm(s(1));
  index2=index1(1:k);
  initial_centroids = D(index2,:);
  
 
    Distance=pdist2(D,initial_centroids);
    [q , new_centroids] = min(Distance');
    
    new_centroids_points=D(new_centroids,:);
    %disp(initial_centroids)
    %disp(new_centroids)
    %disp(new_centroids_points)
    updated_D=[D new_centroids_points];
    updated_D=sortrows(updated_D,3);
    %G1=findgroups(new_centroids_points(:,1))
    
    [idx,Cx] = kmeans(D,k);
    %size(idx)
    %disp(idx)
    %disp("hu")
    %[idx,Cy] = kmeans(D(:,2),k);
    %disp(idx)
    
    ans1 = Cx;
    ans2 = idx;
    
    final_D= [D idx];
    function [cc]=choosecolor()
       
       R= rand();
       B= rand();
       G= rand();
       cc = [ R B G ] ;;
     endfunction
     color_mat=[];
    c=unique(idx);
    for i = 1:size(c)(1)
      color_mat = [color_mat; c(i) , [choosecolor()] ];
      
    endfor
    
    for i = 1:s(1) 
      %disp(final_D(i,1))
      %disp(final_D(i,2))
      %disp('nextpoint')
      %color_mat(final_D(i,3),[2 3 4]);
     
      
     plot(final_D(i,1),final_D(i,2),'x','color',[color_mat(final_D(i,3),[2 3 4])])
     hold 'on'
     grid 'on'
      
    endfor
    
    
    for i = 1: size(Cx)(1)
      plot(Cx(i,1),Cx(i,2),('dk'),'MarkerSize',5,'MarkerFaceColor',[1,0,0])
      title('K means Clustering')
      
    endfor
    
    
    
     
    
  
    
  
  
  
  end
  
