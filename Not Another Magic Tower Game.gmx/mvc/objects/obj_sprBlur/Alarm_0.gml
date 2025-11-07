blur_on=1;
if(beat mod 2 == 0)
{
 precision = 2;
 _prec=max(1,min(10,precision));
 _width=sprWidth/_prec;
 _height=sprHeight/_prec;
 surface_free(blur_1X);
 surface_free(blur_2X);
 blur_1X=surface_create(_width,_height)
 blur_2X=surface_create(_width,_height)
 tvX = startX - 5;
}
else
{
 precision = 1.2;
 _prec=max(1,min(10,precision));
 _width=sprWidth/_prec;
 _height=sprHeight/_prec;
 surface_free(blur_1X);
 surface_free(blur_2X);
 blur_1X=surface_create(_width,_height)
 blur_2X=surface_create(_width,_height)
}
beat += 1;
alarm[1]=6;

