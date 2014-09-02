I=imread('./../images/pap.png');
H=[1 2 1; 2 3 2; 1 2 1];

Min=MinFilter(I,'Min');
Max=MinFilter(I,'Max');
Median=MinFilter(I,'Median');
Weighted=WeightedMedian(I,H);

subplot(1,5,1);imshow(I);title('Original Image');
subplot(1,5,2);imshow(Min);title('Maximum Filtered Image');
subplot(1,5,3);imshow(Max);title('Minimum Filtered Image');
subplot(1,5,4);imshow(Median);title('Median Filtered Image');
subplot(1,5,5);imshow(Weighted);title('Weighted Median Filtered Image');