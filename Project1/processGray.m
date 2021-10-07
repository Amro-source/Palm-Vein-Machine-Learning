% clear all; close all;
function f  =processGray(test)
% sdirectory='C:\Users\Mohammed\Documents\MATLAB\originVein\sunflower';
sdirectory=test;
jpgfiles=dir([sdirectory '/*.jpg']);
%jpegfiles=dir('*.jpg'); ----this for images in Matlab root directory
for k= 1:length(jpgfiles);
   % filename=jpegfiles(k).name;   %%%%%%%%%%This for images in Matlab root
   % directory
    filename=[sdirectory '/' jpgfiles(k).name]; 
    a=imread(filename);
    
    a=imresize(a,[128 128]); % Resize images (Convert image from 300x300 pixels To 128x128 pixels)
%     figure, imshow(a);
   %a=imf(a);
  a=histeq(a); % Enhance images
%     figure, imshow(a)   %%Show Images
a=imftest(a);
%     a=a(:); %To convert this into one column matrix
      a1=a;  
      a1=a1(:); %To convert this into one column matrix

   if k==1
        x=a1;
    else
    x=[ x a1 ];
    end
end
f=x;
end
