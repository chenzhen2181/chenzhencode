%user setting
str='C:\cygwin\home\Administrator\COAWST_NEW\COAWST\Projects\chenzhen\Rip_current\result\';
filename='ocean_his_rip_1.nc';
f=[str,filename];
varname='zeta'
timeindex=16
kindex=1
vec_d=2
uscale=40
%end user setting

grd=roms_get_grid(f,f)
[theData,theGrid,theHan]=roms_sview(f,varname,timeindex,kindex,grd,vec_d,uscale)
set(theHan.quiver,'color','k')