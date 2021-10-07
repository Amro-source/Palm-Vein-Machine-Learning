  x = mvnrnd([0;0], [1 .9;.9 1], 100);
       y = [1 1;1 -1;-1 1;-1 -1];
       MahalDist = mahal(y,x)
       sqEuclidDist = sum((y - repmat(mean(x),4,1)).^2, 2)
       plot(x(:,1),x(:,2),'b.',y(:,1),y(:,2),'ro')
 