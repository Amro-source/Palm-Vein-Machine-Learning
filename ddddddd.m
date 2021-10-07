clc; clear all; close all;

% A=[1 2 3 4; 5 6 7 8; 9, 10, 11, 12; 13, 14, 15, 16; 17, 18, 19, 20; 1, 2, 3, 4; 5, 6, 7, 8; 9, 10, 11, 12; 13, 14, 15, 16];
% 
A=randi([1 255],9,4);

Buffer=[];
[nrow ncol]=size(A);
 for i=1:ncol
     
     m1=A(:,i);
%      mm11=reshape(m1,[3 3]);
%      hn1=imhist(mm11)./numel(mm11);



% f01 = sum((hn1 - hn1).^2);  

     for j=1:ncol
         m2=A(:,j);
%          mm12=reshape(m2, [3 3]);
%          hn2=imhist(mm12)./numel(mm12);
%          f01 = sum((hn1 - hn1).^2);  
%          d=dist(mm11,mm12);
%          D = pdist2(m1,m2,'euclidean')
         kkkk=L2_distance(m1,m2,0)
         Buffer=[Buffer kkkk];
     end
     
 end