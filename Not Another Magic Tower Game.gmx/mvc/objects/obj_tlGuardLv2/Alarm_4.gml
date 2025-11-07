gravity = 0;
direction = point_direction(x,y,player.x,player.y);
speed = 15;
image_angle = sign(x - player.x) * 45;
if(sound)
    sound_fix(sndZhazha);
smash = true;

