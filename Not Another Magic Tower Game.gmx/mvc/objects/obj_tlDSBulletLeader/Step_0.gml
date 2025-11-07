angle += 2.4;
x = 400 + lengthdir_x(obj_tlDSController.r, angle);
y = 304 + lengthdir_y(obj_tlDSController.r, angle);
if(obj_tlDSController.r > 0)
{
    with(instance_create(x,y,obj_tlDSBullet1))
    {
        image_index = obj_tlDSController.ind;
    }
}

