%%%%%%%%%%%%%%%%%%%%%%%%%%%In the Name Of ALLAH %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%The First Step In The First Paper ISA%%%%%%%%%%%%%%%%%%%%

clc; clear all; close all;

img1=imread('originVein\1.jpg');    %% Read Image1
imRZ1=imresize(img1,[128 128]);     %% Resize image1 (convert its size from 300x300 pixels to 128x128 pixels)
H1=histeq(imRZ1);                   %% Enhance image1 using histogram equalization function  
ImgVector1= reshape(H1,1,[]);       %% convert enhanced image1 Matrix (2-dimensional Array) to vector(One-dimensional array)

img2 =imread('originVein\2.jpg');   %% Read Image2
imRZ2=imresize(img2,[128 128]);     %% Resize image2 (convert its size from 300x300 pixels to 128x128 pixels)
H2=histeq(imRZ2);                   %% Enhance image2 using histogram equalization function
ImgVector2= reshape(H2,1,[]);       %% convert enhanced image2 Matrix (2-dimensional Array) to vector(One-dimensional array)

img3=imread('originVein\3.jpg');    %% Read Image3
imRZ3=imresize(img3,[128 128]);     %% Resize image3 (convert its size from 300x300 pixels to 128x128 pixels)
H3=histeq(imRZ3);                   %% Enhance image3 using histogram equalization function  
ImgVector3= reshape(H3,1,[]);       %% convert enhanced image3 Matrix (2-dimensional Array) to vector(One-dimensional array)

img4=imread('originVein\4.jpg');    %% Read Image4
imRZ4=imresize(img4,[128 128]);     %% Resize image4 (convert its size from 300x300 pixels to 128x128 pixels)
H4=histeq(imRZ4);                   %% Enhance image4 using histogram equalization function  
ImgVector4= reshape(H4,1,[]);       %% convert enhanced image4 Matrix (2-dimensional Array) to vector(One-dimensional array)

img5=imread('originVein\5.jpg');    %% Read Image5
imRZ5=imresize(img5,[128 128]);     %% Resize image5 (convert its size from 300x300 pixels to 128x128 pixels)
H5=histeq(imRZ5);                   %% Enhance image5 using histogram equalization function  
ImgVector5= reshape(H5,1,[]);       %% convert enhanced image5 Matrix (2-dimensional Array) to vector(One-dimensional array)

img6=imread('originVein\6.jpg');    %% Read Image6
imRZ6=imresize(img6,[128 128]);     %% Resize image6 (convert its size from 300x300 pixels to 128x128 pixels)
H6=histeq(imRZ6);                   %% Enhance image6 using histogram equalization function  
ImgVector6= reshape(H6,1,[]);       %% convert enhanced image6 Matrix (2-dimensional Array) to vector(One-dimensional array)

img7=imread('originVein\7.jpg');    %% Read Image7
imRZ7=imresize(img7,[128 128]);     %% Resize image7 (convert its size from 300x300 pixels to 128x128 pixels)
H7=histeq(imRZ7);                   %% Enhance image7 using histogram equalization function  
ImgVector7= reshape(H7,1,[]);       %% convert enhanced image7 Matrix (2-dimensional Array) to vector(One-dimensional array)

img8=imread('originVein\8.jpg');    %% Read Image8
imRZ8=imresize(img8,[128 128]);     %% Resize image8 (convert its size from 300x300 pixels to 128x128 pixels)
H8=histeq(imRZ8);                   %% Enhance image8 using histogram equalization function  
ImgVector8= reshape(H8,1,[]);       %% convert enhanced image8 Matrix (2-dimensional Array) to vector(One-dimensional array)

img9=imread('originVein\9.jpg');    %% Read Image9
imRZ9=imresize(img9,[128 128]);     %% Resize image9 (convert its size from 300x300 pixels to 128x128 pixels)
H9=histeq(imRZ9);                   %% Enhance image9 using histogram equalization function  
ImgVector9= reshape(H9,1,[]);       %% convert enhanced image9 Matrix (2-dimensional Array) to vector(One-dimensional array)

img10=imread('originVein\10.jpg');    %% Read Image10
imRZ10=imresize(img10,[128 128]);     %% Resize image10 (convert its size from 300x300 pixels to 128x128 pixels)
H10=histeq(imRZ10);                   %% Enhance image10 using histogram equalization function  
ImgVector10= reshape(H10,1,[]);       %% convert enhanced image10 Matrix (2-dimensional Array) to vector(One-dimensional array)

img11=imread('originVein\11.jpg');    %% Read Image11
imRZ11=imresize(img11,[128 128]);     %% Resize image11 (convert its size from 300x300 pixels to 128x128 pixels)
H11=histeq(imRZ11);                   %% Enhance image11 using histogram equalization function  
ImgVector11= reshape(H11,1,[]);       %% convert enhanced image11 Matrix (2-dimensional Array) to vector(One-dimensional array)

img12=imread('originVein\12.jpg');    %% Read Image12
imRZ12=imresize(img12,[128 128]);     %% Resize image12 (convert its size from 300x300 pixels to 128x128 pixels)
H12=histeq(imRZ12);                   %% Enhance image12 using histogram equalization function  
ImgVector12= reshape(H12,1,[]);       %% convert enhanced image12 Matrix (2-dimensional Array) to vector(One-dimensional array)

img13=imread('originVein\13.jpg');    %% Read Image13
imRZ13=imresize(img13,[128 128]);     %% Resize image13 (convert its size from 300x300 pixels to 128x128 pixels)
H13=histeq(imRZ13);                   %% Enhance image13 using histogram equalization function  
ImgVector13= reshape(H13,1,[]);       %% convert enhanced image13 Matrix (2-dimensional Array) to vector(One-dimensional array)

img14=imread('originVein\14.jpg');    %% Read Image14
imRZ14=imresize(img14,[128 128]);     %% Resize image14 (convert its size from 300x300 pixels to 128x128 pixels)
H14=histeq(imRZ14);                   %% Enhance image14 using histogram equalization function  
ImgVector14= reshape(H14,1,[]);       %% convert enhanced image14 Matrix (2-dimensional Array) to vector(One-dimensional array)

img15=imread('originVein\15.jpg');    %% Read Image15
imRZ15=imresize(img15,[128 128]);     %% Resize image15 (convert its size from 300x300 pixels to 128x128 pixels)
H15=histeq(imRZ15);                   %% Enhance image15 using histogram equalization function  
ImgVector15= reshape(H15,1,[]);       %% convert enhanced image15 Matrix (2-dimensional Array) to vector(One-dimensional array)

img16=imread('originVein\16.jpg');    %% Read Image16
imRZ16=imresize(img16,[128 128]);     %% Resize image16 (convert its size from 300x300 pixels to 128x128 pixels)
H16=histeq(imRZ16);                   %% Enhance image16 using histogram equalization function  
ImgVector16= reshape(H16,1,[]);       %% convert enhanced image16 Matrix (2-dimensional Array) to vector(One-dimensional array)

img17=imread('originVein\17.jpg');    %% Read Image17
imRZ17=imresize(img17,[128 128]);     %% Resize image17 (convert its size from 300x300 pixels to 128x128 pixels)
H17=histeq(imRZ17);                   %% Enhance image17 using histogram equalization function  
ImgVector17= reshape(H17,1,[]);       %% convert enhanced image17 Matrix (2-dimensional Array) to vector(One-dimensional array)

img18=imread('originVein\18.jpg');    %% Read Image18
imRZ18=imresize(img18,[128 128]);     %% Resize image18 (convert its size from 300x300 pixels to 128x128 pixels)
H18=histeq(imRZ18);                   %% Enhance image18 using histogram equalization function  
ImgVector18= reshape(H18,1,[]);       %% convert enhanced image18 Matrix (2-dimensional Array) to vector(One-dimensional array)

img19=imread('originVein\19.jpg');    %% Read Image19
imRZ19=imresize(img19,[128 128]);     %% Resize image19 (convert its size from 300x300 pixels to 128x128 pixels)
H19=histeq(imRZ19);                   %% Enhance image19 using histogram equalization function  
ImgVector19= reshape(H19,1,[]);       %% convert enhanced image19 Matrix (2-dimensional Array) to vector(One-dimensional array)

img20=imread('originVein\20.jpg');    %% Read Image20
imRZ20=imresize(img20,[128 128]);     %% Resize image20 (convert its size from 300x300 pixels to 128x128 pixels)
H20=histeq(imRZ20);                   %% Enhance image20 using histogram equalization function  
ImgVector20= reshape(H20,1,[]);       %% convert enhanced image20 Matrix (2-dimensional Array) to vector(One-dimensional array)

img21=imread('originVein\21.jpg');    %% Read Image21
imRZ21=imresize(img21,[128 128]);     %% Resize image21 (convert its size from 300x300 pixels to 128x128 pixels)
H21=histeq(imRZ21);                   %% Enhance image21 using histogram equalization function  
ImgVector21= reshape(H21,1,[]);       %% convert enhanced image21 Matrix (2-dimensional Array) to vector(One-dimensional array)

img22=imread('originVein\22.jpg');    %% Read Image22
imRZ22=imresize(img22,[128 128]);     %% Resize image22 (convert its size from 300x300 pixels to 128x128 pixels)
H22=histeq(imRZ22);                   %% Enhance image22 using histogram equalization function  
ImgVector22= reshape(H22,1,[]);       %% convert enhanced image22 Matrix (2-dimensional Array) to vector(One-dimensional array)

img23=imread('originVein\23.jpg');    %% Read Image23
imRZ23=imresize(img23,[128 128]);     %% Resize image23 (convert its size from 300x300 pixels to 128x128 pixels)
H23=histeq(imRZ23);                   %% Enhance image23 using histogram equalization function  
ImgVector23= reshape(H23,1,[]);       %% convert enhanced image23 Matrix (2-dimensional Array) to vector(One-dimensional array)

img24=imread('originVein\24.jpg');    %% Read Image24
imRZ24=imresize(img24,[128 128]);     %% Resize image24 (convert its size from 300x300 pixels to 128x128 pixels)
H24=histeq(imRZ24);                   %% Enhance image24 using histogram equalization function  
ImgVector24= reshape(H24,1,[]);       %% convert enhanced image24 Matrix (2-dimensional Array) to vector(One-dimensional array)

img25=imread('originVein\25.jpg');    %% Read Image25
imRZ25=imresize(img25,[128 128]);     %% Resize image25 (convert its size from 300x300 pixels to 128x128 pixels)
H25=histeq(imRZ25);                   %% Enhance image25 using histogram equalization function  
ImgVector25= reshape(H25,1,[]);       %% convert enhanced image25 Matrix (2-dimensional Array) to vector(One-dimensional array)

img26=imread('originVein\26.jpg');    %% Read Image26
imRZ26=imresize(img26,[128 128]);     %% Resize image26 (convert its size from 300x300 pixels to 128x128 pixels)
H26=histeq(imRZ26);                   %% Enhance image26 using histogram equalization function  
ImgVector26= reshape(H26,1,[]);       %% convert enhanced image26 Matrix (2-dimensional Array) to vector(One-dimensional array)

img27=imread('originVein\27.jpg');    %% Read Image27
imRZ27=imresize(img27,[128 128]);     %% Resize image27 (convert its size from 300x300 pixels to 128x128 pixels)
H27=histeq(imRZ27);                   %% Enhance image27 using histogram equalization function  
ImgVector27= reshape(H27,1,[]);       %% convert enhanced image27 Matrix (2-dimensional Array) to vector(One-dimensional array)

img28=imread('originVein\28.jpg');    %% Read Image28
imRZ28=imresize(img28,[128 128]);     %% Resize image28 (convert its size from 300x300 pixels to 128x128 pixels)
H28=histeq(imRZ28);                   %% Enhance image28 using histogram equalization function  
ImgVector28= reshape(H28,1,[]);       %% convert enhanced image28 Matrix (2-dimensional Array) to vector(One-dimensional array)

img29=imread('originVein\29.jpg');    %% Read Image29
imRZ29=imresize(img29,[128 128]);     %% Resize image29 (convert its size from 300x300 pixels to 128x128 pixels)
H29=histeq(imRZ29);                   %% Enhance image29 using histogram equalization function  
ImgVector29= reshape(H29,1,[]);       %% convert enhanced image29 Matrix (2-dimensional Array) to vector(One-dimensional array)

img30=imread('originVein\30.jpg');    %% Read Image30
imRZ30=imresize(img30,[128 128]);     %% Resize image30 (convert its size from 300x300 pixels to 128x128 pixels)
H30=histeq(imRZ30);                   %% Enhance image30 using histogram equalization function  
ImgVector30= reshape(H30,1,[]);       %% convert enhanced image30 Matrix (2-dimensional Array) to vector(One-dimensional array)

figure, imshow(imRZ1);  %% Show Image1 (after resizing)
figure, imshow(imRZ2);  %% Show Image2 (after resizing)
figure, imshow(imRZ3);  %% Show Image3 (after resizing)
figure, imshow(imRZ4);  %% Show Image4 (after resizing)
figure, imshow(imRZ5);  %% Show Image5 (after resizing)
figure, imshow(imRZ6);  %% Show Image6 (after resizing)
figure, imshow(imRZ7);  %% Show Image7 (after resizing)
figure, imshow(imRZ8);  %% Show Image8 (after resizing)
figure, imshow(imRZ9);  %% Show Image9 (after resizing)
figure, imshow(imRZ10);  %% Show Image10 (after resizing)
figure, imshow(imRZ11);  %% Show Image11 (after resizing)
figure, imshow(imRZ12);  %% Show Image12 (after resizing)
figure, imshow(imRZ13);  %% Show Image13 (after resizing)
figure, imshow(imRZ14);  %% Show Image14 (after resizing)
figure, imshow(imRZ15);  %% Show Image15 (after resizing)
figure, imshow(imRZ16);  %% Show Image16 (after resizing)
figure, imshow(imRZ17);  %% Show Image17 (after resizing)
figure, imshow(imRZ18);  %% Show Image18 (after resizing)
figure, imshow(imRZ19);  %% Show Image19 (after resizing)
figure, imshow(imRZ20);  %% Show Image20 (after resizing)
figure, imshow(imRZ21);  %% Show Image21 (after resizing)
figure, imshow(imRZ22);  %% Show Image22 (after resizing)
figure, imshow(imRZ23);  %% Show Image23 (after resizing)
figure, imshow(imRZ24);  %% Show Image24 (after resizing)
figure, imshow(imRZ25);  %% Show Image25 (after resizing)
figure, imshow(imRZ26);  %% Show Image26 (after resizing)
figure, imshow(imRZ27);  %% Show Image27 (after resizing)
figure, imshow(imRZ28);  %% Show Image28 (after resizing)
figure, imshow(imRZ29);  %% Show Image29 (after resizing)
figure, imshow(imRZ30);  %% Show Image30 (after resizing)

figure, imshow(H1);     %% Show Image1 (after enhanced)
figure, imshow(H2);     %% Show Image2 (after enhanced)
figure, imshow(H3);     %% Show Image3 (after enhanced)
figure, imshow(H4);     %% Show Image4 (after enhanced)
figure, imshow(H5);     %% Show Image5 (after enhanced)
figure, imshow(H6);     %% Show Image6 (after enhanced)
figure, imshow(H7);     %% Show Image7 (after enhanced)
figure, imshow(H8);     %% Show Image8 (after enhanced)
figure, imshow(H9);     %% Show Image9 (after enhanced)
figure, imshow(H10);     %% Show Image10 (after enhanced)
figure, imshow(H11);     %% Show Image11 (after enhanced)
figure, imshow(H12);     %% Show Image12 (after enhanced)
figure, imshow(H13);     %% Show Image13 (after enhanced)
figure, imshow(H14);     %% Show Image14 (after enhanced)
figure, imshow(H15);     %% Show Image15 (after enhanced)
figure, imshow(H16);     %% Show Image16 (after enhanced)
figure, imshow(H17);     %% Show Image17 (after enhanced)
figure, imshow(H18);     %% Show Image18 (after enhanced)
figure, imshow(H19);     %% Show Image19 (after enhanced)
figure, imshow(H20);     %% Show Image20 (after enhanced)
figure, imshow(H21);     %% Show Image21 (after enhanced)
figure, imshow(H22);     %% Show Image22 (after enhanced)
figure, imshow(H23);     %% Show Image23 (after enhanced)
figure, imshow(H24);     %% Show Image24 (after enhanced)
figure, imshow(H25);     %% Show Image25 (after enhanced)
figure, imshow(H26);     %% Show Image26 (after enhanced)
figure, imshow(H27);     %% Show Image27 (after enhanced)
figure, imshow(H28);     %% Show Image28 (after enhanced)
figure, imshow(H29);     %% Show Image29 (after enhanced)
figure, imshow(H30);     %% Show Image30 (after enhanced)
%%I=imresize(img1,[128 128]);
%%J=imresize(img2,[64 64]);

%%Z=dist(img1,img2);

