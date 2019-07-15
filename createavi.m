clear;
clc;

WriterObj=VideoWriter('lunkuo.avi', 'Uncompressed AVI');
open(WriterObj);
for i=1:6570
  pic='E:/CODE-MATLAB/lunkuo/';%存放帧图的路径
  pic=strcat(pic,num2str(i));
  ppic=strcat(pic,'.jpg');
  frame=imread(ppic);% 读取图像，放在变量frame中
  disp(ppic);
  writeVideo(WriterObj,frame);% 将frame放到变量WriterObj中
end
close(WriterObj);
