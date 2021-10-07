% read in tiff image and convert it to double format
my_image = imread('GaussianFilteSigma-9.jpg');
my_image = my_image(:,:,1);
% perform thresholding by logical indexing
image_thresholded = my_image;
image_thresholded(my_image<20) = 0;
image_thresholded(my_image>130) = 255;
% display result
figure()
subplot(1,2,1)
imshow(my_image,[])
title('original image')
subplot(1,2,2)
imshow(image_thresholded,[])
title('thresholded image')