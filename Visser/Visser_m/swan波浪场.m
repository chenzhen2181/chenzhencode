%从 提取swan数据.m 提取的波浪场中进一步提取波浪场，该波浪场可调整Y向的值（m），即可改变计算区域的宽度。 
str='N:\chenzhen\boshengliu\Visser\swan\result\new\';
m=10;n=552;
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
 'dissip_fric.mat'};

 nn=size(files,1);
for i=1:nn
	ff=strcat(str,files(i));
	f=ff{1};
	aaaa=load(f);
	aaa=fieldnames(aaaa);
	aa=aaa{1};
	a=getfield(aaaa,aa);
	b=a(1,:);	
	c=repmat(b,m,1);
	ffff=files(i);
	fff=ffff{1};
	filename=[str,'new2\',fff];
	save (filename,'c','-mat');
end 	
	