

% % 
% % Performing Linear Filtering of Images Using imfilter
% % Filtering of images, either by correlation or convolution,
% % can be performed using the toolbox function imfilter.
% % This example filters an image with a 5-by-5 filter 
% % containing equal weights. Such a filter is often called an averaging filter.

I = imread('coins.png');
h = ones(5,5) / 25;
I2 = imfilter(I,h);
imshow(I), title('Original Image');
figure, imshow(I2), title('Filtered Image')



I = imread('eight.tif');
h = ones(5,5) / 25;
I2 = imfilter(I,h);
imshow(I), title('Original Image');
figure, imshow(I2), title('Filtered Image with Black Border')


% % % To filter using border replication, 
% % % pass the additional optional argument 'replicate' to imfilter.


I3 = imfilter(I,h,'replicate');
figure, imshow(I3); 
title('Filtered Image with Border Replication')


% % Read in an RGB image and display it.


rgb = imread('peppers.png');
imshow(rgb);



% % Filter the image and display it.


h = ones(5,5)/25;
rgb2 = imfilter(rgb,h);
figure, imshow(rgb2)


% % % Filtering an Image with Predefined Filter Types
% % % The fspecial function produces several kinds of predefined filters,
% % % in the form of correlation kernels. After creating a filter with fspecial,
% % % you can apply it directly to your image data using imfilter.
% % % This example illustrates applying an unsharp masking filter to a grayscale image.
% % % The unsharp masking filter has the effect of making edges and fine detail in the image more crisp.



I = imread('moon.tif');
h = fspecial('unsharp');
I2 = imfilter(I,h);
imshow(I), title('Original Image')
figure, imshow(I2), title('Filtered Image')











