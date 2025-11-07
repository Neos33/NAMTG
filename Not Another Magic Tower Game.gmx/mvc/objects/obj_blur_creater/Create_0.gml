l = 1.2;
h = 1.5;
beat = 0;
precision=h;
amount=0 
_prec=max(1,min(10,precision))
_width=__view_get( e__VW.WView, 0 )/_prec
_height=__view_get( e__VW.HView, 0 )/_prec
//_width=188/_prec
//_height=188/_prec

blur_1X=surface_create(_width,_height)
blur_2X=surface_create(_width,_height)

blur_on=0
a = 0;
alarm[0]=a;

//startX = 2;
//startY = 130;

