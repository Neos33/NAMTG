action_inherited();
image_xscale = 5;
image_yscale = 5;
image_alpha = 0.8;
alarm[11] = 20;
isStable = true;
sound_fix(sndfasfboom);
image_speed = 0.6;
player.gravity = 0.4;
if(abs(player.x - x) < 120)
{
    alarm[3] = 1;
    alarm[4] = 10;
}

ind = 0;

