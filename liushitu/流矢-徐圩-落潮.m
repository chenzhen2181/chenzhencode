%load 'C:\Users\Administrator\Desktop\matlab-流场图\ubar.mat';
%load 'C:\Users\Administrator\Desktop\matlab-流场图\vbar.mat';load 
bathX=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮.xlsx','坐标','A3:A87')
bathY=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮.xlsx','坐标','B3:B87')
figure(1); 
plot(bathX,bathY);
axis equal;
hold on;
u=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮.xlsx','坐标','L3:CM16');
v=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮.xlsx','坐标','L34:CM47');
n=size(u,1);
x=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮.xlsx','坐标','H3:H82');
y=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮.xlsx','坐标','I3:I82');
for i=1 : n
	uu=u(i,:)';
	vv=v(i,:)';
%	quiver(x,y,uu,vv,0.4, 'color', 'b', 'linewidth', 0.1);
	plotvector(x,y,uu,vv,0.2,1,'b', 'line','uv','var');
	hold on;
end


