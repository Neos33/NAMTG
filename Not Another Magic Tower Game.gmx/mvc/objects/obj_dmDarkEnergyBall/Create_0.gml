action_inherited();
image_speed = 1/4;
direction = point_direction(x,y,player.x,player.y);
speed = 2;
image_alpha = 0.9;
image_xscale = 1.2;
image_yscale = 1.2;
isStable = true;
ammount = 1;
alarm[3] = 2;
emit = part_emitter_create(obj_dmParticleController.sys);
audio_playsound(sndFire1);



