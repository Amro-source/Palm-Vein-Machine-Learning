function f=imgEnhancef3(m)
J = adapthisteq(m);
imshow(J)
figure, imhist(J,64)
f=J;
end