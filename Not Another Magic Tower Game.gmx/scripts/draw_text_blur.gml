//draw_text_blur(text,x,y,radius,radiusD,angleD)
///radius - blur radius
///radiusD - radius step
///angleD - angle step
var a;
a=draw_get_alpha()
for(i=0;i<argument3;i+=argument4)
{
for(j=0;j<360;j+=argument5)
{
draw_set_alpha(a/(argument3/argument4/2*360/argument5))
draw_text(argument1+lengthdir_x(i,j),argument2+lengthdir_y(i,j),argument0)
}
}
draw_set_alpha(a)
