my_image =imread('GaussianFilteSigma-9.jpg');
[nrow ncol]= size(my_image);
for R=1:nrow 
    for C=1:ncol 
        pixel=my_image(R,C);
        if pixel>50 && pixel <130
           pixel=0;
        else  
           pixel=255;
        end
        thresh(R,C)=pixel;
    end
end
im_thresh=mat2gray(thresh);
figure,imshow(im_thresh);
title('thresholding');