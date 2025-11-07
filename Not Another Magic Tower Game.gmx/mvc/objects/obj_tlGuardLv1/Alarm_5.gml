if(type == 1)
{
    x = player.x -200;
    image_angle = -45;
}
else
{
    image_angle = 45;
    x = player.x  + 200;
}
y = player.y - 200;
instance_create(x, y, obj_teleport);
sound_fix(sndTelAtk);
var dir = point_direction(x,y,player.x,player.y);
key.onSmash = true;
key.smashEnd = false;
key.onHold = false;
hspeed = 15 * cos(degtorad(dir));
vspeed = -15 * sin(degtorad(dir));
phase = "smash";

