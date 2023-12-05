clc;
close all;
clear all;
a=imread('qq.tif');
b=imread('ww.tif');

f=fft2(a);
f1=abs(f);
fs1=fftshift(f);
dfs1=log(1+abs(fs1));

figure,
subplot(1,3,1);imshow(f1,[]);
subplot(1,3,2);imshow(fs1,[]);
subplot(1,3,3);imshow(dfs1,[]);

b=imresize(b,size(a));
g=fft2(b);
g1=abs(g);
gs1=fftshift(g);
dgs1=log(1+abs(gs1));

figure,
subplot(1,3,1);imshow(g1,[]);
subplot(1,3,2);imshow(gs1,[]);
subplot(1,3,3);imshow(dgs1,[]);

figure,
subplot(2,2,1);imshow(a);
subplot(2,2,2);imshow(dfs1,[]);
subplot(2,2,3);imshow(b);
subplot(2,2,4);imshow(dgs1,[]);

data3=imrotate(b,45,'nearest');
data3=imresize(data3,size(b));
f3=fft2(data3);
af3=abs(f3);
fs3=fftshift(f3);
dfs3=log(1+abs(fs3));

figure,
subplot(2,2,1);imshow(b);
subplot(2,2,2);imshow(dgs1,[]);
subplot(2,2,3);imshow(data3);
subplot(2,2,4);imshow(dfs3,[]);