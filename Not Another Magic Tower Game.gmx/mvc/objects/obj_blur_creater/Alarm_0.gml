blur_on=1;
if(beat mod 2 == 0)
{
 precision = h;
 _prec=max(1,min(10,precision));
 _width=__view_get( e__VW.WView, 0 )/_prec;
 _height=__view_get( e__VW.HView, 0 )/_prec;
 //_width=188/_prec;
 //_height=188/_prec;
 if(surface_exists(blur_1X))
 {
    surface_free(blur_1X);
 }
 if(surface_exists(blur_2X))
 {
    surface_free(blur_2X);
 }
 blur_1X=surface_create(_width,_height)
 blur_2X=surface_create(_width,_height)
 __view_set( e__VW.XView, 0, -3 );
}
else
{
 precision = l;
 _prec=max(1,min(10,precision));
 _width=__view_get( e__VW.WView, 0 )/_prec;
 _height=__view_get( e__VW.HView, 0 )/_prec;
 //_width=188/_prec;
 //_height=188/_prec;
 if(surface_exists(blur_1X))
 {
    surface_free(blur_1X);
 }
 if(surface_exists(blur_2X))
 {
    surface_free(blur_2X);
 }
 blur_1X=surface_create(_width,_height)
 blur_2X=surface_create(_width,_height)
}
beat += 1;
alarm[1]=6;

