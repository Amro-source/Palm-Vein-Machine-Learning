
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Palm Vein Recognition
%%using%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Matlab%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear all; close all;




I=imread('P_o017_L_S1_Nr1.bmp');

figure, imshow(I);


[R,G,B]=separatecolors(I);

figure,imshow(R);

figure,imshow(G);

figure,imshow(B);



J1 = imgenhance1(R);
figure,imshow(J1);



J2 = imgenhance1(G);
J3 =  imgenhance1(B);
figure,imshow(J2);
figure,imshow(J3);

 subplot(2,2,1);
imhist(R)
subplot(2,2,2);
imhist(J1)
subplot(2,2,3);
imhist(J2)
subplot(2,2,4);
imhist(J3)

%%%%%%figure,imshow(J);


figure,imhist(G);
figure,imhist(B);



