clc;
close all;
clear all;
rgb=imread('tt.tif');
rgb=im2double(rgb);

r=rgb(:,:,1);
g=rgb(:,:,2);
b=rgb(:,:,3);

w1=fspecial('average',5);
r1=imfilter(r,w1);
g1=imfilter(g,w1);
b1=imfilter(b,w1);
rgb1=cat(3,r1,g1,b1);
figure,
subplot(1,2,1);imshow(rgb);
subplot(1,2,2);imshow(rgb1);

hsi=rgb2hsi(rgb);
h=hsi(:,:,1);
s=hsi(:,:,2);
i=hsi(:,:,3);

i1=imfilter(i,w1);
hsi1=cat(3,h,s,i1);

hsi1_rgb=hsi2rgb(hsi1);
figure,imshow(hsi1_rgb);

dif=rgb-hsi1_rgb;
dif1=mat2gray(dif);
figure,imshow(dif1);