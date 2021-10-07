% clear all; close all;

function f  =processgray(test)


% sdirectory='C:\Users\Mohammed\Documents\MATLAB\originVein\sunflower';

sdirectory=test;
jpgfiles=dir([sdirectory '/*.jpg']);

%jpegfiles=dir('*.jpg'); ----this for images in Matlab root directory



for k= 1:length(jpgfiles);
    
   % filename=jpegfiles(k).name;   %%%%%%%%%%This for images in Matlab root
   % directory
    
   
   filename=[sdirectory '/' jpgfiles(k).name];
    
    a=imread(filename);
    
%     a=rgb2gray(a);
%     a=imresize(a,[20 20]);

%     kkkk=zeros(size(a,1),size(a,2));    %% just one Two-dimensional array (Matrix)
%     a=uint8(kkkk);



% a=double(a);
%     a1=Colorhistogramfeat1(a);
%     a=a(:); %To convert this into one column matrix
      a1=a;  

      a1=a1(:); %To convert this into one column matrix

%    if k==1
%         x=a1;
%     else
%     x=[ x a1 ];
%     end
    
%     imshow(I);
end

k1=length(jpgfiles);


f=x;


end
