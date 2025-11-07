with(obj_minibossBullet3)
{
 if(!other.dimChange && dim == other.dim)
 {
    b = instance_create(x,y,obj_smallGrayCherry);
    b.speed = 5;
    b.direction = point_direction(other.x,other.y,x,y);
 }
 else if(dim < other.dim)
 {
  alarm[2] = 1;
 }
}
dimChange = false;
alarm[11] = 35;

