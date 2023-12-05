clear all;
clc;
close all;
a=imread('bb.tif');
b=imread('nn.tif');
c=imread('mm.tif');
d=imread('kk.tif');
figure,
subplot(1,2,1);imshow(a);
subplot(1,2,2);imhist(a);
figure,
subplot(4,2,2);imhist(a);
subplot(4,2,4);imhist(b);
subplot(4,2,6);imhist(c);
subplot(4,2,8);imhist(d);
subplot(4,2,1);imshow(a);
subplot(4,2,3);imshow(b);
subplot(4,2,5);imshow(c);
subplot(4,2,7);imshow(d);



