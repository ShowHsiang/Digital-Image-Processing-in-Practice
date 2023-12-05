clear all;
clc;
close all;
a=imread('qq.tif');
f=im2double(a);

w1=[-1 -2 -1;0 0 0;1 2 1];
w2=[-1 0 1;-2 0 2;-1 0 1];
gx=imfilter(f,w1);
gy=imfilter(f,w2);

gradmag= sqrt(gx.^2 + gy.^2);
gradmag1= abs(gx) + abs(gy);
figure,
subplot(1,2,1);imshow(f);
subplot(1,2,2);imshow(gradmag);

figure,
subplot(1,2,1);imshow(gradmag);
subplot(1,2,2);imshow(gradmag1);