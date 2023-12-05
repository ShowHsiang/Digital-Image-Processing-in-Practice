clc;
close all;
clear all;
a=imread('qq.tif');
b=imread('ww.tif');

f=fft2(a);
p1=angle(f);

b=imresize(b,size(a));
g=fft2(b);
p2=angle(g);

c=imrotate(a,145);
c=imresize(c,size(a));
h=fft2(c);
p3=angle(h);

figure,
subplot(3,2,1);imshow(a);
subplot(3,2,2);imshow(p1);title('xiangweijiao')
subplot(3,2,3);imshow(b);
subplot(3,2,4);imshow(p2);title('xiangweijiao')
subplot(3,2,5);imshow(c);
subplot(3,2,6);imshow(p3);title('xiangweijiao')