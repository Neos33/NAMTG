with(obj_action2Cherry)
{
    dis = point_distance(x,y, 400, 240);
    ang = point_direction(400, 240, x,y);
    cry = instance_create(x,y,obj_action2CherryExplode);
    cry.direction = ang;
    cry.speed = 3 + dis / 50;
}
if(shoot)
{
    alarm[5] = 40;
}

