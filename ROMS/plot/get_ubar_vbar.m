str='C:\Users\Administrator\Desktop\'
f=[str,'depth averaged velocity.mat']
var='vbar' %ubar vbar Hwave
load (f)
m=size(data.XComp,2)
n=size(data.XComp,3)
tt=size(data.XComp,1)

for i= 1:tt
	dd=reshape(data.XComp(i,:,:),m,n)
	eval([var,'.t',num2str(i),'=',mat2str(dd(:,:)),';'])
end

name=[str,var,'.mat'];
save(name,var);