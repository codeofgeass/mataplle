clear;
clc;

WriterObj=VideoWriter('lunkuo.avi', 'Uncompressed AVI');
open(WriterObj);
for i=1:6570
  pic='E:/CODE-MATLAB/lunkuo/';%���֡ͼ��·��
  pic=strcat(pic,num2str(i));
  ppic=strcat(pic,'.jpg');
  frame=imread(ppic);% ��ȡͼ�񣬷��ڱ���frame��
  disp(ppic);
  writeVideo(WriterObj,frame);% ��frame�ŵ�����WriterObj��
end
close(WriterObj);
