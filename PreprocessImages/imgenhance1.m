% % % Understanding Intensity Adjustment
% % % Image enhancement techniques are used to improve an image, 
% % % where "improve" is sometimes defined objectively (e.g., increase the signal-to-noise ratio), 
% % % and sometimes subjectively (e.g., make certain features easier to see by modifying the colors or intensities).
% % % Intensity adjustment is an image enhancement technique that maps an 
% % % image's intensity values to a new range. To illustrate, this figure shows
% % % a low-contrast image with its histogram. Notice in the histogram of the 
% % % image how all the values gather in the center of the range.



clc; clear all; close all;

I = imread('pout.tif');
imshow(I);
figure, imhist(I,64);



% % % Adjusting Intensity Values to a Specified Range
% % % You can adjust the intensity values in an image using the imadjust function, 
% % % where you specify the range of intensity values in the output image.
% % % For example, this code increases the contrast in a low-contrast grayscale
% % % image by remapping the data values to fill the entire intensity range [0, 255].



I= imread('pout.tif');
J = imadjust(I);
imshow(J)
figure, imhist(J,64)



% % This figure displays the adjusted image and its histogram. Notice the increased contrast in the image,
% % 
% % and that the histogram now fills the entire range.
% % 
% % For example, you can decrease the contrast of an image by
% % narrowing the range of the data. In the example below,
% % the man's coat is too dark to reveal any detail. imadjust 
% % maps the range [0,51] in the uint8 input image to [128,255] 
% % in the output image. This brightens the image considerably, 
% % and also widens the dynamic range of the dark portions of 
% % the original image, making it much easier to see the details 
% % in the coat. Note, however, that because all values above 51 
% % in the original image are mapped to 255 (white) in the adjusted 
% % image, the adjusted image appears washed out.


I = imread('cameraman.tif');
J = imadjust(I,[0 0.2],[0.5 1]);
imshow(I);
figure, imshow(J);


% % Setting the Adjustment Limits Automatically
% % To use imadjust, you must typically perform two steps:
% % View the histogram of the image to determine the intensity value limits.
% % Specify these limits as a fraction between 0.0 and 1.0 so that you can pass them 
% % to imadjust in the [low_in high_in] vector.
% % For a more convenient way to specify these limits, use the stretchlim function.
% % (The imadjust function uses stretchlim for its simplest syntax, imadjust(I).)
% % This function calculates the histogram of the image and determines the 
% % adjustment limits automatically. The stretchlim function returns these
% % values as fractions in a vector that you can pass as the [low_in high_in] argument to imadjust; 
% % for example:

    
    
I = imread('rice.png');
J = imadjust(I,stretchlim(I),[0 1]);






% The example below illustrates gamma correction. 
% Notice that in the call to imadjust, the data
% ranges of the input and output images are specified
% as empty matrices. When you specify an empty matrix,
% imadjust uses the default range of [0,1]. 
% In the example, both ranges are left empty; 
% this means that gamma correction is applied
% without any other adjustment of the data.


[X,map] = imread('forest.tif');
I = ind2gray(X,map);
J = imadjust(I,[],[],0.5);
imshow(I)
figure, imshow(J)

% % % Adjusting Intensity Values Using Histogram Equalization
% % % The process of adjusting intensity values can be done 
% % % automatically by the histeq function. histeq performs 
% % % histogram equalization, which involves transforming the 
% % % intensity values so that the histogram of the output image 
% % % approximately matches a specified histogram. (By default,
% % % histeq tries to match a flat histogram with 64 bins, but you 
% % % can specify a different histogram instead; see the reference
% % % page for histeq.)
% % % This example illustrates using histeq to adjust a grayscale image.
% % % The original image has low contrast, with most values in the
% % % middle of the intensity range. histeq produces an output image
% % % having values evenly distributed throughout the range.



I = imread('pout.tif');
J = histeq(I);
imshow(J)
figure, imhist(J,64)


% % % histeq can return a 1-by-256 vector that shows,
% % % for each possible input value, the resulting output value.
% % %     (The values in this vector are in the range [0,1],
% % %     regardless of the class of the input image.) 
% % %     You can plot this data to get the transformation curve. For example:

    
    I = imread('pout.tif');
[J,T] = histeq(I);
figure,plot((0:255)/255,T);



% % % To illustrate, this example uses adapthisteq to adjust the contrast
% % % in a grayscale image. The original image has low contrast, 
% % % with most values in the middle of the intensity range. 
% % % adapthisteq produces an output image having values evenly distributed throughout the range.


I = imread('pout.tif');
J = adapthisteq(I);
imshow(J)
figure, imhist(J,64)




% % % Simple Decorrelation Stretching
% % % You can apply decorrelation and stretching operations on the library of images
% % % available in the imdemos directory. The library includes a LANDSAT image of 
% % % the Little Colorado River. In this example, you perform a simple decorrelation stretch on this image:
% % % The image has seven bands, but just read in the three visible colors:


A = multibandread('littlecoriver.lan', [512, 512, 7], ...
'uint8=>uint8', 128, 'bil', 'ieee-le', ...
{'Band','Direct',[3 2 1]});
% % % 
% % % Then perform the decorrelation stretch:


B = decorrstretch(A);

% % % Now view the results:


imshow(A)
figure, imshow(B)


% % % A color band scatterplot of the images shows 
% % % how the bands are decorrelated and equalized:



rA = A(:,:,1);
gA = A(:,:,2);
bA = A(:,:,3);
figure, plot3(rA(:),gA(:),bA(:),'.')
grid on
xlabel('Red (Band 3)')
ylabel('Green (Band 2)')
zlabel('Blue (Band 1)')

rB = B(:,:,1);
gB = B(:,:,2);
bB = B(:,:,3);
figure, plot3(rB(:),gB(:),bB(:),'.')
grid on
xlabel('Red (Band 3)')
ylabel('Green (Band 2)')
zlabel('Blue (Band 1)')


% % % Adding a Linear Contrast Stretch
% % % Now try the same transformation, 
% % % but with a linear contrast stretch applied 
% % % after the decorrelation stretch:


imshow(A)
C = decorrstretch(A,'Tol',0.01);
figure, imshow(C)


% % % Compare the transformed image to the original.










