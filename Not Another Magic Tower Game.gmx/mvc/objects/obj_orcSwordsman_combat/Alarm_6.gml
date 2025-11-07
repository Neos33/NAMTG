prepareToHit = false;
dashhit = instance_create(x + sign(image_xscale * 4), y + 16, obj_swordhit);
dashhit.image_xscale = -image_xscale;
dashNum += 1;
alarm[4] = 30;


