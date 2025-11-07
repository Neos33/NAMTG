var claw = instance_create(800 - x, 347, obj_orcMageDeathClaw);
claw.image_xscale = image_xscale * 2.5;
claw.image_yscale = 2;
claw.hspeed = 3 * sign(image_xscale);
alarm[4] = 60;

