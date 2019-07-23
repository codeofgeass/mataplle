clear;
clc;
se = strel('line',11,90);
obj=VideoReader('bap.mp4');
num=obj.NumberOfFrames;
for i=1:6570
    frame=read(obj,i);
    frame=im2bw(frame);
    lunkuo=bwperim(frame);
    lunkuo=imdilate(lunkuo,se);
    lunkuo=imresize(lunkuo,0.5);
    %imshow(lunkuo);
    %生成帧图，路径可自由修改
    lujing=strcat('E:/mataple/lunkuo/',num2str(i));
    lujing=strcat(lujing,'.jpg');
    imwrite(lunkuo,lujing);
end
