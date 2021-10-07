function f=imgEnhancef2(m)
imshow(m);
figure, imhist(m,64);
J = imadjust(m,[0 0.2],[0.5 1]);
figure, imshow(J);
f=J;
end