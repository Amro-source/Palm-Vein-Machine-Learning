Im1 = imread('1.jpeg');
Im2 = imread('2.jpeg');

Im1 = rgb2gray(Im1);
Im2 = rgb2gray(Im2);

hn1 = imhist(Im1)./numel(Im1);
hn2 = imhist(Im2)./numel(Im2);

% Calculate the Euclidean distance
f = sum((hn1 - hn2).^2)


%  If you really do want it to be L2 euclidian distance, the last line should be

f=norm(hn1-hn2); 
% but then you should rather L2-normalize the histogram:

hn1 = imhist(Im1);
hn2 = imhist(Im2);
hn1 = hn1/norm(hn1);
hn2 = hn2/norm(hn2);