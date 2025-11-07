if(point_distance(x,y,obj_osuHpAva.x,obj_osuHpAva.y) < 15)
{
    instance_destroy();
}
else
{
    move_towards_point(obj_osuHpAva.x,obj_osuHpAva.y,15);
}

