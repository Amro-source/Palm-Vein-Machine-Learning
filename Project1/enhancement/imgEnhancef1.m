function f=imgEnhancef1(m)
imshow(m);
figure, imhist(m,64);
J = imadjust(m);
imshow(J)
figure, imhist(J,64)
f=J;
end