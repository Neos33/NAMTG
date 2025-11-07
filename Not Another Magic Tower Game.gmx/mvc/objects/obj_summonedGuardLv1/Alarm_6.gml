if(player.x > 400)
{
    x = player.x -350;
    image_angle = -45;
}
else
{
    image_angle = 45;
    x = player.x  + 350;
}
y = player.y - 350;
instance_create(x, y, obj_teleport);
sound_fix(sndTelAtk);
dir = point_direction(x,y,player.x,player.y);
key.onSmash = true;
key.smashEnd = false;
key.onHold = false;
hspeed = 15 * cos(degtorad(dir));
vspeed = -15 * sin(degtorad(dir));
phase = "smash";



