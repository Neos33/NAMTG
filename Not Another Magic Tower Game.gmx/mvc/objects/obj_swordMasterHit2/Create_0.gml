action_inherited();
image_xscale = 1.5 * sign(x-player.x);
image_yscale = 1.5;
hspeed = sign(player.x - x);
if(hspeed == 0)
{
    hspeed = 1;
}
image_speed = 0.4;
sx = x;
sy = y;
isStable = true;
alarm[3] = 1;

ind = 0;

