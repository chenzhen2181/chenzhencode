str='C:\cygwin\home\Administrator\COAWST_NEW\COAWST\Projects\chenzhen\Rip_current_VF\result\';
file='rip_his_src.nc';
var.name='vbar';
var.cax=[-0.05,0.05]
time=13;
uscale=50;
d=5;
k=0


f=[str,file]
grd = roms_get_grid(f)
%roms_sview(file,var,time,k,grd,vec_d,uscale,varargin)
abc=roms_sview(f,var,time,k,grd,d,uscale,'k-')
axis equal;



str='C:\cygwin\home\Administrator\COAWST_NEW\COAWST\Projects\chenzhen\Rip_current_VF\result\';
file='rip_his_src.nc';
var='h';
time=13;
level=1
f=[str,file]
grd = roms_get_grid(f)
I = nc_vinfo(f, var);

%plot_field(Gname, Hname, Vname, Tindex, Level)
plot_field(f,f, var, time, level)
axis equal;

