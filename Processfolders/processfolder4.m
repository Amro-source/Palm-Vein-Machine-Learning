% clear all; close all;

function f  =processfolder4(test)




% sdirectory='C:\Users\space_it\Documents\MATLAB\Images\sunflower';

sdirectory=test;
 bmpfiles=dir([sdirectory '/*.bmp']);

%jpegfiles=dir('*.jpg'); ----this for images in Matlab root directory



for k= 1:length(bmpfiles);
    
   % filename=jpegfiles(k).name;   %%%%%%%%%%This for images in Matlab root
   % directory
    
   
   filename=[sdirectory '/' bmpfiles(k).name];
    
    a=imread(filename);
    
%     a=rgb2gray(a);
%     a=imresize(a,[20 20]);

    if size(a,3)==1
        kkkk=zeros(size(a,1),size(a,2),3);
        kkkk(:,:,1)=a;
        kkkk(:,:,2)=a;
        kkkk(:,:,3)=a;
        
        a=uint8(kkkk);
    end    



% a=double(a);
%      a1=Colorhistogramfeat1(a);
%     a=a(:); %To convert this into one column matrix
      a1=a;  

      a1=a1(:); %To convert this into one column matrix

   if k==1
        x=a1;
    else
    x=[ x a1 ];
    end
    
%     imshow(I);
end

k1=length(bmpfiles);


f=x;


end
