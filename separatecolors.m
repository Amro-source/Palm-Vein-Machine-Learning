function [r, g, b]=separatecolors(I)

if size(I,3)==1
   r=I;
   g=I;
   b=I;
else   
    
   r=I(:,:,1);
   g=I(:,:,2);
   
   b=I(:,:,3);
end 


end