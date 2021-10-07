%%% This function takes the image after enhancement as argument and returns 
%%% a filtered image

function f=imftest(his) %% Image Filter function

h = fspecial('unsharp');
I2 = imfilter(his,h);
 imshow(his), title('Original Image')
 figure, imshow(I2), title('Filtered Image')
f=I2;
end