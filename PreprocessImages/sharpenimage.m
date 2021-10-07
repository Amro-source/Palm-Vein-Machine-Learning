
clc; clear all; close all;


% % Sharpen an image and display itRead image and display it.
% % 


a = imread('hestain.png');
imshow(a), title('Original Image');

% % Sharpen the image and display it.


b = imsharpen(a);
figure, imshow(b), title('Sharpened Image');



% % 
% % Sharpen an image using different control parameters 
% % and display itRead image and display it.



a = imread('rice.png');
imshow(a), title('Original Image');
 
b = imsharpen(a,'Radius',2,'Amount',1);
figure, imshow(b), title('Sharpened Image');


% % Sharpen image, specifying the radius and amount parameters.


b = imsharpen(a,'Radius',2,'Amount',1);
figure, imshow(b), title('Sharpened Image');