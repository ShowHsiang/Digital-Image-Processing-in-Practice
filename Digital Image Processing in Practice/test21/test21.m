
clear all;
clc;
close all;
a=imread('zz.tif');
b=225-a;
figure,imshow(a);
figure,imshow(b);

d=imadjust(a);
figure,imshow(d);
c=imadjust(a,[0,1],[1,0]);
figure,
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(c);

