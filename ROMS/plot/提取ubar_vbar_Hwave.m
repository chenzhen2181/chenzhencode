str='C:\cygwin\home\Administrator\COAWST_NEW\COAWST\Projects\chenzhen\shoreface\result\'
f=[str,'ocean_his_1_50_183_601.nc']
var='ubar' %ubar vbar Hwave
data=nc_varget(f,var)
m=size(data,2)
n=size(data,3)
tt=size(nc_varget(f,'ocean_time'))

for i= 1:tt
	dd=reshape(data(i,:,:),m,n)
	eval([var,'.t',num2str(i),'=',mat2str(dd(:,:)),';'])
end

name=[str,var,'.mat'];
save(name,var);