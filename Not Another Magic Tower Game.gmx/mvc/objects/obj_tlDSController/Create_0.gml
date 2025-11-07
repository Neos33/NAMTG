r = 600;
ind = 0;
interval = 22;
for(var i=0;i<5;i+=1)
{
    angle = 90+i*72;
    tx = 400 + lengthdir_x(r,angle);
    ty = 304 + lengthdir_y(r,angle);
    with(instance_create(tx,ty,obj_tlDSBulletLeader))
    {
        angle = other.angle;
    }
}
alarm[0] = interval;

