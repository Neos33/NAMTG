claw = instance_create(player.x + sign(image_xscale) * 300, 526 - 40, obj_orcMageDeathClaw);
claw.image_xscale = -image_xscale * 3.5;
claw.image_yscale = 3.5;
claw.hspeed = -3 * sign(image_xscale);

