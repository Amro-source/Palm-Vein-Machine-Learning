clc; clear all; close all;
%%# Read an image
I = imread('1.jpg');
imshow(I);

%# Create the gaussian filter with hsize = [5 5] and sigma = 1.8
G1 = fspecial('gaussian',[5 5],1.8);
%# Filter it
Ig1 = imfilter(I,G1,'same');

%# Create the gaussian filter with hsize = [5 5] and sigma = 2
G2 = fspecial('gaussian',[5 5],2);
%# Filter it
Ig2 = imfilter(I,G2,'same');

%# Create the gaussian filter with hsize = [5 5] and sigma = 2.2
G3 = fspecial('gaussian',[5 5],2.2);
%# Filter it
Ig3 = imfilter(I,G3,'same');

%# Create the gaussian filter with hsize = [5 5] and sigma = 2.4
G4 = fspecial('gaussian',[5 5],2.4);
%# Filter it
Ig4 = imfilter(I,G4,'same');

%# Create the gaussian filter with hsize = [5 5] and sigma = 2.6
G5 = fspecial('gaussian',[5 5],2.6);
%# Filter it
Ig5 = imfilter(I,G5,'same');

% %# Create the gaussian filter with hsize = [5 5] and sigma = 2.8
% G6 = fspecial('gaussian',[5 5],2.8);
% %# Filter it
% Ig6 = imfilter(I,G6,'same');

%# Display
%imshow(Ig)


subplot(3,3,1);imagesc(I);
title('Original Palm');
subplot(3,3,2);imagesc(Ig1);
title('Gaussian Filter with Sigma=1.8');
subplot(3,3,3);imagesc(Ig2);
title('Gaussian Filter with Sigma=2');
subplot(3,3,4);imagesc(Ig3);
title('Gaussian Filter with Sigma=2.2');
subplot(3,3,5);imagesc(Ig4);
title('Gaussian Filter with Sigma=2.4');
subplot(3,3,6);imagesc(Ig5);
title('Gaussian Filter with Sigma=2.6');
% subplot(3,3,7);imagesc(Ig6);
% title('Gaussian Filter with Sigma=2.8');



imwrite(Ig1,'GaussianFilteSigma1-8.jpg');
imwrite(Ig2,'GaussianFilteSigma2.jpg');
imwrite(Ig3,'GaussianFilteSigma2-2.jpg');
imwrite(Ig4,'GaussianFilteSigma2-4.jpg');
imwrite(Ig5,'GaussianFilteSigma2-6.jpg');
% imwrite(Ig6,'GaussianFilteSigma2-8.jpg');
