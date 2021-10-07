% % Creating a Binary Mask
% % You can use the createMask method of the imroi base class to 
% % create a binary mask for any type of ROI object — impoint, 
% % imline, imrect, imellipse, impoly, or imfreehand. 
% % The createMask method returns a binary image the same size 
% % as the input image, containing 1s inside the ROI and 0s everywhere else.
% % The example below illustrates how to use the createMask method:


clc ; clear all ;close all;


img = imread('pout.tif');
h_im = imshow(img);
e = imellipse(gca,[55 10 120 120]);
BW = createMask(e,h_im);