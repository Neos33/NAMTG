//pauseImg = sprite_create_from_screen(0, 0, 800, 608, false, false, 0, 0);
pauseImg = sprite_create_from_surface(application_surface, 0, 0, 800, 608, false, false, 0, 0);

instance_deactivate_all(1);
instance_activate_object(world);
start = true;
x = 400;
y = 304;
image_xscale = 1.2;
image_yscale = 1.2;

changeSpd = 0.03;
image_alpha = 0;

alarm[0] = 2;
alarm[11] = 1;

instance_create(0,0,obj_darkLordDark);

