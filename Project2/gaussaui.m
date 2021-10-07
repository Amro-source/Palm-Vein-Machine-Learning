
clc; clear all; close all;
%%# Read an image
I = imread('peppers.png');
%# Create the gaussian filter with hsize = [5 5] and sigma = 2
G = fspecial('gaussian',[5 5],2);
%# Filter it
Ig = imfilter(I,G,'same');
%# Display
imshow(Ig)
