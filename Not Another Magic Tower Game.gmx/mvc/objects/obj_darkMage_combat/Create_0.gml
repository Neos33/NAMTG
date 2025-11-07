event_inherited();
name = "Dark Mage";
image_speed = 1/8;
darkCount = 3;
x=400;
y=128;
instance_create(0,0,obj_dmParticleController);
alarm[3] = 50;
//alarm[11] = 50;

blinker = instance_create(0,0,obj_darkBlinker);
blinker.minAlpha = 0.2;
blinker.maxAlpha = 0.4;
blinker.stepAlpha = 0.01;
with(blinker)
{
    event_user(0);
}



darkCount2 = 0;
transform = false;
transformed = false;
burst = false;
emit = part_emitter_create(obj_dmParticleController.sys);
part_emitter_region(obj_dmParticleController.sys,emit,x-20,x+20,y-8,y,ps_shape_ellipse,ps_distr_gaussian);

/*
attract1 = part_attractor_create(obj_dmParticleController.sys);
part_attractor_position(obj_dmParticleController.sys,attract1,x,y-32);
part_attractor_force(obj_dmParticleController.sys,attract1,0.5,96,1,1);

destroy1 = part_destroyer_create(obj_dmParticleController.sys);
part_destroyer_region(obj_dmParticleController.sys,destroyer1,x,x,y-32,y-32,ps_shape_line);
*/




/* */
/*  */
