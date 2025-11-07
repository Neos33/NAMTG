action_inherited();
image_speed = 0.3;
image_xscale = 1/3;
image_yscale = 1/3;
isStable = true;
path = path_add();
path_set_kind(path,1);
path_set_closed(path,false);
path_add_point(path,x,y,100);
path_add_point(path,x,320,100);
path_add_point(path,400,400,100);
path_start(path,5,0,1);

