//draw_sprite_blur(sprite,subimg,x,y,radius,radiusD,angleD)
///radius - blur radius
///radiusD - radius step ( min. radius/16+1 )
///angleD - angle step
for(i=0;i<argument4;i+=argument5)
{
for(j=0;j<360;j+=argument6)
{
draw_sprite_ext(argument0,argument1,argument2+lengthdir_x(i,j),argument3+lengthdir_y(i,j),1,1,0,c_white,1/(argument4/argument5/2*360/argument6))}
}


