%load 'C:\Users\Administrator\Desktop\matlab-流场图\ubar.mat';
%load 'C:\Users\Administrator\Desktop\matlab-流场图\vbar.mat';load 
bathX=xlsread('流矢图数据-涨潮-2.xlsx','坐标','A3:A90')
bathY=xlsread('流矢图数据-涨潮-2.xlsx','坐标','B3:B90')
figure(1); 
plot(bathX,bathY);
axis equal;
hold on;
u=xlsread('流矢图数据-涨潮-2.xlsx','坐标','L3:CS16');
v=xlsread('流矢图数据-涨潮-2.xlsx','坐标','L34:CS47');
n=size(u,1);
x=xlsread('流矢图数据-涨潮-2.xlsx','坐标','H3:H88');
y=xlsread('流矢图数据-涨潮-2.xlsx','坐标','I3:I88');

for i=1 : n
	uu=u(i,:)';
	vv=v(i,:)';
	quiver(x,y,uu,vv,0.2, 'color', 'b', 'linewidth', 0.1);
%	quiver(x,y,uu,vv,0.2,'linewidth', 0.1);
%	plotvector(x,y,uu,vv,0.3,0.2,'b', 'line','uv','var');
	hold on;
end
u=xlsread('流矢图数据-落潮-2.xlsx','坐标','L3:CS15');
v=xlsread('流矢图数据-落潮-2.xlsx','坐标','L34:CS46');
n=size(u,1);
x=xlsread('流矢图数据-落潮-2.xlsx','坐标','H3:H88');
y=xlsread('流矢图数据-落潮-2.xlsx','坐标','I3:I88');
for i=1 : n
	uu=u(i,:)';
	vv=v(i,:)';
 	quiver(x,y,uu,vv,0.2, 'color', 'm', 'linewidth', 0.1);
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


