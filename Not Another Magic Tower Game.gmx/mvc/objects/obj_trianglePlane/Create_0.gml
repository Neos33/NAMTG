image_speed = 0;
hspeed = 6;
tt = instance_create(x,y,obj_trianglePlaneTail);
//tt.hspeed = -6;
th = instance_create(x,y,obj_trianglePlaneTail);
th.p = tt;
th.hspeed = 6;
flag = 0;

