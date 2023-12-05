clear all;
clc;
close all;
a=imread('bb.tif');
b=imread('nn.tif');
c=imread('mm.tif');
d=imread('kk.tif');

e=histeq(a,256);
figure,
subplot(1,2,1);imshow(a);
subplot(1,2,2);imhist(e);
f=histeq(b,256);
g=histeq(c,256);
h=histeq(d,256);

subplot(4,3,2);imhist(a);
subplot(4,3,5);imhist(b);
subplot(4,3,8);imhist(c);
subplot(4,3,11);imhist(d);
subplot(4,3,1);imshow(a);
subplot(4,3,4);imshow(b);
subplot(4,3,7);imshow(c);
subplot(4,3,10);imshow(d);
subplot(4,3,3);imhist(e);
subplot(4,3,6);imhist(f);
subplot(4,3,9);imhist(g);
subplot(4,3,12);imhist(h);