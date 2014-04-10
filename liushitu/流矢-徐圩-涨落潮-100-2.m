%load 'C:\Users\Administrator\Desktop\matlab-流场图\ubar.mat';
%load 'C:\Users\Administrator\Desktop\matlab-流场图\vbar.mat';load 
s=2000
w1x=[457314.036 459034.0744	];				
w1y=[3833685.519 3832154.149 ];					
w1xx=[457252.3096 459013.4851];
w1yy=[3833606.585 3832038.59];
e1x=[466120.1215 467368.8094];
e1y=[3831842.971 3831753.192];
e1xx=[466026.088 467361.8735];
e1yy=[3831746.439 3831653.503];
e4x=[465041.6716 467192.3711];
e4y=[3829366.86	3829217.226];
e4xx=[464970.4977 467185.4304];
e4yy=[3829271.57 3829117.467];
plot(w1x,w1y);
hold on;
plot(w1xx,w1yy);
hold on;
plot(e1x,e1y);
hold on;
plot(e1xx,e1yy);
hold on;
plot(e4x,e4y);
hold on;
plot(e4xx,e4yy);
hold on;
bathX=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-涨潮-大潮-100-2.xlsx','坐标','A3:A90')
bathY=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-涨潮-大潮-100-2.xlsx','坐标','B3:B90')
figure(1); 
plot(bathX,bathY);
axis equal;
hold on;
u=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-涨潮-大潮-100-2.xlsx','坐标','L3:DF15');
v=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-涨潮-大潮-100-2.xlsx','坐标','L34:DF46');
n=size(u,1);
x=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-涨潮-大潮-100-2.xlsx','坐标','H3:H101');
y=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-涨潮-大潮-100-2.xlsx','坐标','I3:I101');

for i=1 : n
	uu=u(i,:)';
	vv=v(i,:)';
	quiver(x,y,uu*s,vv*s,0, 'color', 'b', 'linewidth', 0.1);
%	plotvector(x,y,uu,vv,0.3,0.2,'b', 'line','uv','var');
	hold on;
end
u=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮-大潮-100-2.xlsx','坐标','L3:DF15');
v=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮-大潮-100-2.xlsx','坐标','L34:DF46');
n=size(u,1);
x=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮-大潮-100-2.xlsx','坐标','H3:H101');
y=xlsread('N:\chenzhen\xiaolunwen\流矢图\流矢图数据-落潮-大潮-100-2.xlsx','坐标','I3:I101');
for i=1 : n
	uu=u(i,:)';
	vv=v(i,:)';
 	quiver(x,y,uu*s,vv*s,0, 'color', 'm', 'linewidth', 0.1);
%	plotvector(x,y,uu,vv,0.3,0.2,'m', 'line','uv','var');
	hold on;
end
for i= 1 :size(x)
	plot(x(i),y(i),'+','LineWidth',0.2,...             %设置圆圈的线粗
                'MarkerEdgeColor','k',...      %边界设置为黑色
                'MarkerFaceColor','k',...      %内部设置白色
                'MarkerSize',3);
	hold on;
end
x=460000;
y=3830000;
uu=-0.3;
vv=0;
quiver(x,y,uu*s,vv*s,0, 'color', 'b', 'linewidth', 0.1);
x=460000;
y=3831000;
uu=-0.3;
vv=0
quiver(x,y,uu*s,vv*s,0, 'color', 'm', 'linewidth', 0.1);
