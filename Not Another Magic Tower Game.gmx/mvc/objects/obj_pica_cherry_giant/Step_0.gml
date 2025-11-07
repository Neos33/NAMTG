direction+=dirspd
image_alpha+=alpspd
image_angle+=iaglspd
image_xscale+=xsclspd
image_yscale+=ysclspd

if control 
{
    x=xx+cos(degtorad(angle))*distance
    y=yy-sin(degtorad(angle))*distance
    distance+=disspd
    angle+=aglspd
}

if pose 
{
    speed = (point_distance(x,y,xxx,yyy))/2;
    direction = point_direction(x,y,xxx,yyy);
    if (speed > maxspd)speed = maxspd;
}

if go
{
    t2+=1
    if t2=3 
    {
        var a=instance_create(x,y,obj_pica_cherry);
        a.sprite_index=sprite_index
        a.image_speed=0
        a.direction=random(360)
        a.speed=3
        t2=0
    }
}

if go4 
{
    t2+=1
    var a=instance_create(x,y,obj_pica_cherry);
    a.sprite_index=sprite_index
    a.image_speed=0
    a.direction=random(360)
    a.speed=3
}

if go2 
{
    dir+=30//139.5
    var a=instance_create(x,y,obj_pica_cherry);
    a.sprite_index=sprite_index
    a.image_speed=0
    a.direction=dir
    a.speed=3
}

if go3
{
    t+=1
    if t=2 
    {
        dir+=139.5
        var a=instance_create(x,y,obj_pica_cherry);
        a.sprite_index=sprite_index
        a.image_speed=0
        a.direction=dir
        a.speed=1.5
        t=0
    }
}

