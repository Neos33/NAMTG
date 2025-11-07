startX = 2;
startY = 130;
sprWidth = 186;
sprHeight = 186;
tvX = 96;
tvY = 224;

beat = 0;
precision=2.5;
amount=0;
_prec=max(1,min(10,precision));
_width=sprWidth/_prec;
_height=sprHeight/_prec;


blur_1X=surface_create(_width,_height);
blur_2X=surface_create(_width,_height);

blur_on=0;
a = 0;
b = 0;
alarm[0]=a;



