sprite_index = sprPlayerFall;
image_xscale = player.image_xscale;
time = 100;
cx = obj_tlStartDarkHole.x;
cy = obj_tlStartDarkHole.y;
r = point_distance(x,y,cx,cy);
rAngle = point_direction(cx,cy,x,y);
rspd = r/time;
image_speed = 1/8;
start = true;

