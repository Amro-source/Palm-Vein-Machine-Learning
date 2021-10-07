function s=skeleton(i)
BW2 = bwmorph(i,'skel',Inf);
imshow(i)
figure, imshow(BW2)
s=BW2;
end