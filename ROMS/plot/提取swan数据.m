str='N:\chenzhen\boshengliu\Visser\swan\result\';
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
	m=size(a,1);
%	n=size(a,2);
	k=round(m/2);
	b=ones(m,1)*a(k,:);
	ffff=files(i);
	fff=ffff{1};
	filename=[str,'new\',fff];
	save (filename,'b','-mat');
end 	
	
	