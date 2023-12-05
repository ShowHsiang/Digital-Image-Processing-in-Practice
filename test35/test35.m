clc;
close all;
clear all;
rgb=imread('rr.tif');

hsi=rgb2hsi(rgb);
h=hsi(:,:,1);
s=hsi(:,:,2);
i=hsi(:,:,3);

i1=histeq(i,256);

figure,
subplot(1,3,1);imshow(rgb);
subplot(1,3,2);imhist(i);
subplot(1,3,3);imhist(i1);

hsi1=cat(3,h,s,i1);
hsi_rgb=hsi2rgb(hsi1);
figure,
subplot(1,2,1);imshow(rgb);
subplot(1,2,2);imshow(hsi_rgb);

s1=2*s;

hsi2=cat(3,h,s1,i);
hsi_rgb1=hsi2rgb(hsi2);
figure,
subplot(1,2,1);imshow(rgb);
subplot(1,2,2);imshow(hsi_rgb1);

