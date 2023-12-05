clear all;
clc;
close all;
a=imread('cc.tif');
b=imadjust(a,[],[],0.6);
figure,
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(b);

c=imadjust(a,[],[],0.4);
d=imadjust(a,[],[],0.3);
figure
subplot(2,2,1);imshow(a);
subplot(2,2,2);imshow(b);
subplot(2,2,3);imshow(c);
subplot(2,2,4);imshow(d);

e=imread('vv.tif');
f=imadjust(e,[],[],3);
figure,
subplot(1,2,1);imshow(e);
subplot(1,2,2);imshow(f);

g=imadjust(e,[],[],4);
h=imadjust(e,[],[],5);
figure
subplot(2,2,1);imshow(e);
subplot(2,2,2);imshow(f);
subplot(2,2,3);imshow(g);
subplot(2,2,4);imshow(h);