with(obj_light4)
{
 if(point_distance(x,y,400,304) < 3)
 {
  hspeed = 0;
  vspeed = 0;
  x = 400;
  y = 304;
 }
 else
 {
 move_towards_point(400,304,3);
 }
}
alarm[7]=  1;

