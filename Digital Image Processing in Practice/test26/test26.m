clear all;
clc;
close all;
a=imread('oo.tif');
f=im2double(a);

w1=[0 1 0;1 -4 1;0 1 0];
g1=imfilter(f,w1);
figure,
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(g1);

fm=double(g1-min(g1(:)));
tg1=fm./max(fm(:));
figure,imshow(tg1);

eg1=f-g1;
figure,imshow(eg1);

figure,
subplot(2,2,1);imshow(a);
subplot(2,2,2);imshow(g1);
subplot(2,2,3);imshow(tg1);
subplot(2,2,4);imshow(eg1);