

clc; clear all; close all;


%Filtering a Region in an Image
%%This example uses masked filtering to increase the contrast of a specific region of an image:
%Read in the image. 

I = imread('pout.tif');

%%%%Create the mask.

%This example uses the mask BW created by the createMask method 
%in the section Creating a Binary Mask. The region of interest specified is the child's face.
%Use fspecial to create the filter:
h_im = imshow(I);
e = imellipse(gca,[55 10 120 120]);
BW = createMask(e,h_im);

h = fspecial('unsharp');

%%Call roifilt2, specifying the filter, the image to be filtered, and the mask:

I2 = roifilt2(h,I,BW);
imshow(I)
figure, imshow(I2)





%%%%Specifying the Filtering Operation
%%%roifilt2 also enables you to specify your own function to operate on the ROI.
%%%%%This example uses the imadjust function to lighten parts of an image:
%%%%Read in the image. 

I = imread('cameraman.tif');

%%%%Create the mask. In this example, the mask is a binary image containing text.
%%%%The mask image must be cropped to be the same size as the image to be filtered:

BW = imread('text.png');

mask = BW(1:256,1:256); 

%%%%%Create the function you want to use as a filter:


f = @(x) imadjust(x,[],[],0.3);

%%%%%%Call roifilt2, specifying the image to be filtered,
%%%%%%%the mask, and the filter. The resulting image, I2, has the text imprinted on it:


I2 = roifilt2(I,mask,f);
imshow(I2)



