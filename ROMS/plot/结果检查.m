str='C:\cygwin\home\Administrator\COAWST_NEW\COAWST\Projects\chenzhen\Rip_current_VF\result\';              %gridname='bath_1_50_183_10.nc';
rstname='rip_his_src.nc';
%rstname='ocean_rst_1_50_183_10.nc';
%rstname='ocean_rst_1_50_183_601.nc';   % result name 
%rstname='ocean_his_1_50_183_601.nc';   % result name 
r=[str,rstname];  
g=get_roms_grid(r);

Tindex=2;   %time index 

%%%%%%%setting for 2D   plot%%%%%%%%%
Var='ubar'; %zeta,ubar,vbar,Hwave
plot_field(g, r, Var, Tindex)

%%%%%%%setting for 3D   plot%%%%%%%%%%
%Var='u';       %'u','v';
%L=1;
%plot_field(g, r, Var, Tindex,L);
