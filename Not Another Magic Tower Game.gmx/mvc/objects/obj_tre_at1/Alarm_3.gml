if(a3==0)
{
    with(obj_tre_bullet)
    {
        if za=1
        {
            a=instance_create(x,y,obj_tre_bullet2);
            a.alarm[1]=14;
            a.image_index=image_index;
            a.speed = point_distance(x,y,400+other.ra,y)/7;
            a.x2=400+2*other.ra;
            a.y2=304;
            a.direction = 0;
        }
    }
}
if(a3==1)
{
    with(obj_tre_bullet)
    {
        if za=1
        {
            a=instance_create(x,y,obj_tre_bullet2);
            a.alarm[1]=14;
            a.image_index=image_index;
            a.speed = point_distance(x,y,400-other.ra,y)/7;
            a.direction = 180;
            a.x2=400-2*other.ra;
            a.y2=304;
        }
    }
}
if(a3==2)
{
    with(obj_tre_bullet)
    {
        if za=1
        {
            a=instance_create(x,y,obj_tre_bullet2);
            a.alarm[1]=14;
            a.image_index=image_index;
            a.speed = point_distance(x,y,x,304+other.ra)/7;
            a.x2=400;
            a.y2=304+2*other.ra;
            a.direction = 270;
        }
    }
}
if(a3==3)
{
    with(obj_tre_bullet)
    {
        if za=1
        {
            a=instance_create(x,y,obj_tre_bullet2);
            a.alarm[1]=14;
            a.image_index=image_index;
            a.speed = point_distance(x,y,x,304-other.ra)/7;
            a.x2=400;
            a.y2=304-2*other.ra;
            a.direction = 90;
        }
    }
}

a3+=1;
if a3<4
alarm[3]=fpb/2;

