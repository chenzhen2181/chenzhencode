str='C:\cygwin\home\Administrator\COAWST_NEW\COAWST\Projects\chenzhen\podu\result\'
f=[str,'ocean_his_1_50.nc']
var='salt'
data=nc_varget(f,var)
m=size(data,3)
n=size(data,4)
sl=size(data,2)
tt=size(nc_varget(f,'ocean_time'))

for s= 1 : sl
	for i= 1:tt
		dd=reshape(data(i,s,:,:),m,n)
		eval([var,'.s',num2str(s),'.t',num2str(i),'=',mat2str(dd(:,:)),';'])
	end
end
name=[str,var,'.mat'];
save(name,var);