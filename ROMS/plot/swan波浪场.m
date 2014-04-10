str='N:\chenzhen\boshengliu\podu\swan\result\new\';
m=10;n=183;
files={'hsig.mat',
 'dissip.mat',
 'rtp.mat',
 'tmbot.mat',
 'ubot.mat',
 'wdir.mat',
 'wlen.mat',
 'qb.mat',
 'xp.mat',
 'yp.mat',
 'dissip_break.mat',
 'dissip_wcap.mat',
 'dissip_fric.mat',
 'force.mat'};

 nn=size(files,1);
for i=1:nn
	ff=strcat(str,files(i));
	f=ff{1};
	aaaa=load(f);
	aaa=fieldnames(aaaa);
	aa=aaa{1};
	a=getfield(aaaa,aa);
	c=a(1:m,1:n);	
	ffff=files(i);
	fff=ffff{1};
	filename=[str,'new2\',fff];
	save (filename,'c','-mat');
end 	
	