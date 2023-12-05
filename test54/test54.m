clc;
close all;
clear all;
a=imread('ss.tif');
b=imread('aa.tif');
b=imresize(b,size(a));

f1=fft2(a);
a1=angle(f1);
p1=abs(f1);
p11=log(1+abs(fftshift(f1)));
figure,imshow(a1);
figure,imshow(p11,[]);title('Ƶ������');

t1=ifft2(exp(j*a1));
figure,imshow(t1,[]);title('�����');

t2=ifft2(p1);
figure,imshow(t2,[]);title('��Ƶ��');

tt=ifft2(p1.*exp(j*a1));
figure,imshow(tt,[]);title('���Ƶ��');

f2=fft2(b);
a2=angle(f2);
p2=abs(f2);
tt1=ifft2(p1.*exp(j*a2));
tt2=ifft2(p2.*exp(j*a1));
figure,
subplot(2,2,1);imshow(b);
subplot(2,2,2);imshow(tt1,[]);title('�����������Ƶ��');
subplot(2,2,3);imshow(a);
subplot(2,2,4);imshow(tt2,[]);title('����Ƶ���������');