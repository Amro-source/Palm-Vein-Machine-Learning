
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc ; clear all; close all;


% % For example, this code computes each output pixel by taking
% % the standard deviation of the values of the input
% % pixel's 3-by-3 neighborhood (that is, the pixel
% % itself and its eight contiguous neighbors).



I = imread('tire.tif');
I2 = nlfilter(I,[3 3],'std2');

% % 
% % You can also write code to implement a specific function,
% % and then use this function with nlfilter. For example,
% % this command processes the matrix I in 2-by-3 neighborhoods
% % with a function called myfun.m. The syntax @myfun is 
% % an example of a function handle.



I2 = nlfilter(I,[2 3],@myfun);

% % If you prefer not to write code to implement a specific function,
% % you can use an anonymous function instead. This example converts 
% % the image to class double because the square root function is not 
% % defined for the uint8 datatype.



I = im2double(imread('tire.tif'));
f = @(x) sqrt(min(x(:)));
I2 = nlfilter(I,[2 2],f);

% % % (For more information on function handles and anonymous functions,
% % % see function_handle in the MATLAB Function Reference documentation.)




% 
% Note   This example is only intended to illustrate the use of nlfilter.
% For a faster way to perform this local maximum operation, use imdilate.


I = imread('tire.tif');
f = @(x) max(x(:));
I2 = nlfilter(I,[3 3],f);
imshow(I);
figure, imshow(I2);


