event_inherited();

image_speed = 1/8;
image_alpha = 0.1;
image_xscale = 0.1;
image_yscale = 0.1;
alarm[3] = 1;
partStart = true;

emit = part_emitter_create(obj_tlPreFinalController.sys);

xl = ds_list_create();
yl = ds_list_create();


weapon = noone;
tx = 0;
time = 0;
size = 0;


/*attract = part_attractor_create(obj_tlPreFinalController.sys);
part_attractor_position(obj_tlPreFinalController.sys,attract,x,y-64);
part_attractor_force(obj_tlPreFinalController.sys,attract,0.5,128,1,1);

/* */
/*  */
