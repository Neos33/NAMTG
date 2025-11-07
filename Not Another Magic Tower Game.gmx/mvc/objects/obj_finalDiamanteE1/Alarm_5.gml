for(var i=-1;i<=1;i+=2)
{
    var a=instance_create(x,y,obj_finalDiamanteB1);
    a.image_index=image_index;
    a.image_angle=image_angle;
    a.image_speed=0;
    a.speed=5;
    a.direction=point_direction(400,304,x,y)+180-i*aaa;
}
alarm[5]=3;

