


clc; clear all; close all;

path='L:\MATLAB\R2013a\bin\Palm Vein matching';

f=processfolder4(path);


size(f)

noimgs=size(f,2);

img1=f(:,1);
img2=f(:,2);



%%%%%%%%%%%%%%%%%Im1 and Im2 same person%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Im1 = imread('P_o017_L_S1_Nr1.bmp');
Im2 = imread('P_o017_L_S1_Nr2.bmp');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%Im3 different person%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Im3=imread('P_o017_L_S1_Nr4.bmp');



Im1 = rgb2gray(Im1);
Im2 = rgb2gray(Im2);
Im3 = rgb2gray(Im3);


hn1 = imhist(Im1)./numel(Im1);
hn2 = imhist(Im2)./numel(Im2);
hn3 = imhist(Im3)./numel(Im3);



% Calculate the Euclidean distance
f = sum((hn1 - hn2).^2)

f1=sum((hn1 - hn3).^2)


%  If you really do want it to be L2 euclidian distance, the last line should be

f=norm(hn1-hn2); 

f1=norm(hn1-hn3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%manhaten%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%distance%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%Manhattan distance weight function

W = rand(4,3);
P = rand(3,1);
Z = mandist(W,P)

Z = mandist(Im1,Im2)

d=norm(hn1-hn2,1)
dd=norm(hn1-hn3,1)
%%%or even 
d1 = sum(abs(hn1-hn2));
dd1=sum(abs(hn1-hn3))

% but then you should rather L2-normalize the histogram:

hn1 = imhist(Im1);
hn2 = imhist(Im2);
hn3= imhist(Im3);

hn1 = hn1/norm(hn1);
hn2 = hn2/norm(hn2);
hn3 = hn3/norm(hn3);











