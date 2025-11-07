action_inherited();
image_speed = 0;
speed = 6;
direction = point_direction(x,y,player.x, player.y - random_range(0,32));
alarm[3] = 5;
alarm[11] = 50;
audio_playsound(sndLaser1);
isStable = true;

boom = false;

