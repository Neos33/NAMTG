//draw_sprite_blur_ext(sprite,subimg,x,y,xscale,yscale,rot,color,alpha,radius,radiusD,angleD)
///radius - blur radius
///radiusD - radius step
///angleD - angle step
for(i=0;i<argument9;i+=argument10)
{
for(j=0;j<360;j+=argument11)
{
draw_sprite_ext(argument0,argument1,argument2+lengthdir_x(i,j),argument3+lengthdir_y(i,j),argument4,argument5,argument6,argument7,argument8/(argument9/argument10/2*360/argument11))
}
}
