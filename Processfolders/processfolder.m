% clear all; close all;

function [f t]=processfolder(a)




% sdirectory='C:\Users\space_it\Documents\MATLAB\Images\sunflower';

sdirectory=a;
 jpegfiles=dir([sdirectory '/*.jpg']);

%jpegfiles=dir('*.jpg'); ----this for images in Matlab root directory



for k= 1:length(jpegfiles);
    
   % filename=jpegfiles(k).name;   %%%%%%%%%%This for images in Matlab root
   % directory
    
   
   filename=[sdirectory '/' jpegfiles(k).name];
    
    a=imread(filename);
    
%     a=rgb2gray(a);
%     a=imresize(a,[20 20]);
a=double(a);
     a1=Colorhistogramfeat1(a);
%     a=a(:); %To convert this into one column matrix
  
      a1=a1(:); %To convert this into one column matrix

   if k==1
        x=a1;
    else
    x=[ x a1 ];
    end
    
%     imshow(I);
end

k1=length(jpegfiles);

temp=[1;0];
      
t=temp
for i=1:k1-1

  t=[t temp];

end

f=x;


end

