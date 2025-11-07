obj_tre_cam.pat=3;
with(obj_tre_bullet)
{
    if(image_index==2 or image_index==3)
    {      
        a=instance_create(x,y,obj_tre_bullet2);
        a.image_index=image_index;
        a.speed=point_distance(x,y,400,304)/10*4/3;
        a.direction=point_direction(x,y,400,304);
        a.dirspd=0.5;
        a.alarm[0]=18;
    }
}

