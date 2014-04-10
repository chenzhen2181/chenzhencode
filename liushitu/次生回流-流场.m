%load 'C:\Users\Administrator\Desktop\matlab-流场图\ubar.mat';
%load 'C:\Users\Administrator\Desktop\matlab-流场图\vbar.mat';load 
bathX=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-次生回流-流场.xlsx','坐标','A3:A90')
bathY=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-次生回流-流场.xlsx','坐标','B3:B90')
u=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-次生回流-流场.xlsx','坐标','L3:FE29');
v=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-次生回流-流场.xlsx','坐标','L34:FE60');
n=size(u,1);
x=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-次生回流-流场.xlsx','坐标','H3:H152');
y=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-次生回流-流场.xlsx','坐标','I3:I152');
for i=1 : n
	plot(bathX,bathY);
	axis equal;
	hold on;
%	for j= 1 :size(x)
%		plot(x(j),y(j),'+','LineWidth',0.2,...             %设置圆圈的线粗
%                'MarkerEdgeColor','k',...      %边界设置为黑色
%                'MarkerFaceColor','k',...      %内部设置白色
%                'MarkerSize',3);
%		hold on;
%	end
	uu=u(i,:)';
	vv=v(i,:)';
	quiver(x,y,uu,vv,0.5, 'color', 'b', 'linewidth', 0.1);
%	quiver(x,y,uu,vv,0.2,'linewidth', 0.1);
%	plotvector(x,y,uu,vv,0.3,0.2,'b', 'line','uv','var');
	set(gcf, 'PaperPositionMode', 'auto')
	print(gcf,'-r600','-dtiff',['C:',num2str(i),'.tiff']);
	hold off;
end



