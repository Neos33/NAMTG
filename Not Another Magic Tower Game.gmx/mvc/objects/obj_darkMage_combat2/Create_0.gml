event_inherited();
name = "Dark Mage";
image_speed = 1/8;
image_alpha = 0.1;
image_xscale = 0.1;
image_yscale = 1.9;
alarm[3] = 1;


emit = part_emitter_create(obj_dmParticleController.sys);

xl = ds_list_create();
yl = ds_list_create();


pCount = 0;
p = 0;
shotGunCount = 0;
time1 = 0;
waterBulletCount = 0;
size = 0;

waterBulletSound = false;
partStart = false;
hasAch = false;
time = 0;

px[0] = 0;
px[1] = 0;
px[2] = 0;
px[3] = 0;

/*attract1 = part_attractor_create(obj_dmParticleController.sys);
part_attractor_position(obj_dmParticleController.sys,attract1,x,y-64);
part_attractor_force(obj_dmParticleController.sys,attract1,0.5,128,1,1);



/* */
/*  */
