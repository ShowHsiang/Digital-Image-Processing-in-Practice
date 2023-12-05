clc;
close all;
clear all;
i=imread('ee.tif');
[m,n]=size(i);
i=im2double(i);
ni=zeros(m,n,3);

for k=1:m
    for s=1:n
        if i(k,s)<0.1
            ni(k,s,1)=1;
            ni(k,s,2)=0;
            ni(k,s,3)=1;
        elseif i(k,s)<0.3
            ni(k,s,1)=0;
            ni(k,s,2)=0;
            ni(k,s,3)=1;
        else
            ni(k,s,1)=0;
            ni(k,s,2)=1;
            ni(k,s,3)=0;
        end
    end
end
figure,
subplot(1,2,1);imshow(i);
subplot(1,2,2);imshow(ni);