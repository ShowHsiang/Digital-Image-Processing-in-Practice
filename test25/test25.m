clear all;
clc;
close all;
a=imread('pp.tif');
a1=im2double(a);
h=fspecial('average',3);
b=filter2(h,a1);
j=fspecial('average',10);
c=filter2(j,a1);
k=fspecial('average',35);
d=filter2(k,a1);
figure,
subplot(2,2,1);imshow(a);
subplot(2,2,2);imshow(b);
subplot(2,2,3);imshow(c);
subplot(2,2,4);imshow(d);


