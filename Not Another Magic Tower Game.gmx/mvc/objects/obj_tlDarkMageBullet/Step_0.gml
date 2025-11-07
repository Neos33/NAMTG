if(!instance_exists(obj_tlDMRipple))
{
    if(speed < 5 && start) 
        speed += 0.02;
}
else
{
    var mDis = point_distance(x,y,obj_tlDMRipple.x, obj_tlDMRipple.y);
    if(mDis <= obj_tlDMRipple.radius)
    {
        var mDir = point_direction(obj_tlDMRipple.x, obj_tlDMRipple.y, x, y);
        motion_add(mDir, 0.2);
        if(speed > 7)
        {
            speed = 7;
        }
    }
}
image_angle = direction - 90;

