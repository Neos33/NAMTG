x = 800-obj_finalTrebole.x+lengthdir_x(len,dir);
y = obj_finalTrebole.y+lengthdir_y(len,dir);
dir += ddir;
ddir += dac;

timer += 1;
if timer==2
{
    var a=instance_create(x,y,obj_finalShadow);
    a.sprite_index=sprite_index;
    a.image_index=image_index;
    a.image_speed=0;
    a.depth=depth+1;
    a.image_xscale = 0.5;
    a.image_yscale = 0.5;
    a.sclspd=0.025;
    timer=0;
}

