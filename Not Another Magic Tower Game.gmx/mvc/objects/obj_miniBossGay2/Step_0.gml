if(rotate == 1)
{
 ang += 4;
 image_angle = ang;
 with(obj_minibossBullet3)
 {
   if(!escape)
   {
    direction += 4; 
    image_angle = direction;
    x = other.x + dis * cos(degtorad(direction));
    y = other.y - dis * sin(degtorad(direction));
   }
 }
}

