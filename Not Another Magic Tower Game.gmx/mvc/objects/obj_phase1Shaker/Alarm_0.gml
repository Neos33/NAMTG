blur_on=1;
 precision = h;
 _prec=max(1,min(10,precision));
 _width=__view_get( e__VW.WView, 0 )/_prec;
 _height=__view_get( e__VW.HView, 0 )/_prec;

 surface_free(blur_1X);
 surface_free(blur_2X);
 blur_1X=surface_create(_width,_height)
 blur_2X=surface_create(_width,_height)
 __view_set( e__VW.XView, 0, -3 );
alarm[1]=6;

