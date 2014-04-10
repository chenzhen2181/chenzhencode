%load 'C:\Users\Administrator\Desktop\matlab-流场图\ubar.mat';
%load 'C:\Users\Administrator\Desktop\matlab-流场图\vbar.mat';
load 'D:\matlab-流场图\depth averaged velocity1.mat'
%u=ubar.t291(2:74,2:92);
%v=vbar.t291(2:74,2:92);
u=data.XComp(2:74,2:92)';
v=data.YComp(2:74,2:92)';
xx=1.1:0.2:15.5;
yy=1.1:0.2:19.1;
[x,y]=meshgrid(xx,yy);
quiver(x,y,u,v)
hold on
quiver(x,y,v,u)
hold off