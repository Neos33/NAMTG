if(point_distance(x,y,startX,startY) <= 15)
{
  speed = 0;
  image_angle = startAngle;
  x = startX;
  y = startY;
  status = 0;
  obj_dmLastController.alarm[3] = 30;   
}
else
{
    speed -= 0.6;
    alarm[7] = 1;
}

