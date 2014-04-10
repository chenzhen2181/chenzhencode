%load 'C:\Users\Administrator\Desktop\matlab-流场图\ubar.mat';
%load 'C:\Users\Administrator\Desktop\matlab-流场图\vbar.mat';load 
bathX=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-回流-流场-2.xlsx','坐标','A3:A90')
bathY=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-回流-流场-2.xlsx','坐标','B3:B90')
plot(bathX,bathY);
axis equal;
hold on;
u=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-回流-流场-2.xlsx','坐标','L3:Z29');
v=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-回流-流场-2.xlsx','坐标','L34:Z60');
n=size(u,1);
x=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-回流-流场-2.xlsx','坐标','H3:H17');
y=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-回流-流场-2.xlsx','坐标','I3:I17');
for i=1 : n
	uu=u(i,:)';
	vv=v(i,:)';
 	quiver(x,y,uu,vv,0.2, 'color', 'b', 'linewidth', 0.1);
%	plotvector(x,y,uu,vv,0.3,0.2,'m', 'line','uv','var');
%	quiver(x,y,uu,vv,0.2,'linewidth', 0.1);
	hold on;
end
for i= 1 :size(x)
	plot(x(i),y(i),'+','LineWidth',0.2,...             %设置圆圈的线粗
                'MarkerEdgeColor','k',...      %边界设置为黑色
                'MarkerFaceColor','k',...      %内部设置白色
                'MarkerSize',3);
	hold on;
end


