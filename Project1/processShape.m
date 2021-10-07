% clear all; close all;
function mx  = processShape(mt)
% mx=[];
Buffer=[];
[nrow ncol]=size(mt);
 for i=1:ncol
     m1=double(mt(:,i));    %Convert to double
     for j=1:ncol
         m2=double(mt(:,j));    %Convert to bouble
         kkkk=L2_distance(m1,m2,0);
         Buffer=[Buffer kkkk];
     end
 end
Buffer= reshape(Buffer,[ncol ncol]);
mx=Buffer;
end
