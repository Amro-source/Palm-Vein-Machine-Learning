clc; clear all; close all;

img1=imread('originVein\1.jpg');    %% Read Image1
imRZ1=imresize(img1,[128 128]);     %% Resize image1 (convert its size from 300x300 pixels to 128x128 pixels)
H1=histeq(imRZ1);                   %% Enhance image1 using histogram equalization function  
ImgVector1= reshape(H1,1,[]);       %% convert enhanced image1 Matrix (2-dimensional Array) to vector(One-dimensional array)

img2 =imread('originVein\2.jpg');   %% Read Image2
imRZ2=imresize(img2,[128 128]);     %% Resize image2 (convert its size from 300x300 pixels to 128x128 pixels)
H2=histeq(imRZ2);                   %% Enhance image2 using histogram equalization function
ImgVector2= reshape(H2,1,[]);       %% convert enhanced image2 Matrix (2-dimensional Array) to vector(One-dimensional array)

img3=imread('originVein\3.jpg');    %% Read Image3
imRZ3=imresize(img3,[128 128]);     %% Resize image3 (convert its size from 300x300 pixels to 128x128 pixels)
H3=histeq(imRZ3);                   %% Enhance image3 using histogram equalization function  
ImgVector3= reshape(H3,1,[]);       %% convert enhanced image3 Matrix (2-dimensional Array) to vector(One-dimensional array)

figure, imshow(imRZ1);              %% Show Image1 (after resizing)
figure, imshow(imRZ2);              %% Show Image2 (after resizing)
figure, imshow(imRZ3);              %% Show Image3 (after resizing)

figure, imshow(H1);                 %% Show Image1 (after enhanced)
figure, imshow(H2);                 %% Show Image2 (after enhanced)
figure, imshow(H3);                 %% Show Image3 (after enhanced)

subplot(2,2,1);
imhist(H1)
subplot(2,2,2);
imhist(H2)
subplot(2,2,3);
imhist(H3)

hn1=imhist(H1)./numel(H1);
hn2=imhist(H2)./numel(H2);
hn3=imhist(H3)./numel(H3);

f01 = sum((hn1 - hn1).^2);  
f02 = sum((hn1 - hn2).^2);
f03 = sum((hn1 - hn3).^2);
f04 = sum((hn2 - hn1).^2);
f05 = sum((hn2 - hn2).^2);
f06 = sum((hn2 - hn3).^2);
f07 = sum((hn3 - hn1).^2);
f08 = sum((hn3 - hn2).^2);
f09 = sum((hn3 - hn3).^2);

f11 = norm(hn1 - hn1); 
f12 = norm(hn1 - hn2);
f13 = norm(hn1 - hn3);
f21 = norm(hn2 - hn1);
f22 = norm(hn2 - hn2);
f23 = norm(hn2 - hn3);
f31 = norm(hn3 - hn1);
f32 = norm(hn3 - hn2);
f33 = norm(hn3 - hn3);

%  x= numel(H1);
%  y= numel(H2);
%  z= numel(H3);

