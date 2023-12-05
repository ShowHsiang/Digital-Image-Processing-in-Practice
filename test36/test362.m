clc;
close all;
clear all;
rgb=imread('tt.tif');
rgb=im2double(rgb);

r=rgb(:,:,1);
g=rgb(:,:,2);
b=rgb(:,:,3);

w1=[0 1 0,1 -4 1,0 1 0];
r1=imfilter(r,w1);
g1=imfilter(g,w1);
b1=imfilter(b,w1);
rgb1=cat(3,r1,g1,b1);
rgb11=rgb-rgb1;
figure,
subplot(1,2,1);imshow(rgb);
subplot(1,2,2);imshow(rgb11);

hsi=rgb2hsi(rgb);
h=hsi(:,:,1);
s=hsi(:,:,2);
i=hsi(:,:,3);

i1=imfilter(i,w1);
hsi1=cat(3,h,s,i1);

hsi1_rgb=hsi2rgb(hsi1);
hsi1_rgb1=rgb-hsi1_rgb;
figure,imshow(hsi1_rgb1);

dif=rgb-hsi1_rgb1;
dif1=mat2gray(dif);
figure,imshow(dif1);

figure,
subplot(2,2,1);imshow(rgb);
subplot(2,2,2);imshow(rgb11);
subplot(2,2,3);imshow(hsi1_rgb1);
subplot(2,2,4);imshow(dif1);