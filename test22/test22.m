clear all;
clc;
close all;
a=imread('xx.tif');
b=log(1+double(a));
figure,
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(b);

c=mat2gray(log(1+double(a)));
figure,
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(c);