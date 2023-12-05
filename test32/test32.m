clc;
close all;
clear all;
rgb=imread('ww.tif');

r=rgb(:,:,1);
g=rgb(:,:,2);
b=rgb(:,:,3);
figure,
subplot(2,2,1);imshow(rgb);title('rgb');
subplot(2,2,2);imshow(r);title('r');
subplot(2,2,3);imshow(g);title('g');
subplot(2,2,4);imshow(b);title('b');

hsi=rgb2hsi(rgb);
h=hsi(:,:,1);
s=hsi(:,:,2);
i=hsi(:,:,3);

figure,
subplot(2,2,1);imshow(hsi);title('hsi');
subplot(2,2,2);imshow(h);title('h');
subplot(2,2,3);imshow(s);title('s');
subplot(2,2,4);imshow(i);title('i');

rgb1=hsi2rgb(hsi);
r1=rgb1(:,:,1);
g1=rgb1(:,:,2);
b1=rgb1(:,:,3);
figure,
subplot(2,2,1);imshow(rgb1);title('rgb1');
subplot(2,2,2);imshow(r1);title('r1');
subplot(2,2,3);imshow(g1);title('g1');
subplot(2,2,4);imshow(b1);title('b1');