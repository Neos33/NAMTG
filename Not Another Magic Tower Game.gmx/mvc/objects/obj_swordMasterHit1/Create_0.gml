action_inherited();
//direction = point_direction(x,y,player.x,RangeClamp(player.y,0,y));
//speed = 0.5;
//image_angle = direction - 180;
image_speed = 0;
image_xscale = 2 * sign(obj_swordMaster_combat.x - player.x);
image_yscale = 2;
alarm[3] = 1;
isStable = true;
sound_play(sndClaw1);


ind = 0;
gap = 0;
mx = 0;
my = 0;

