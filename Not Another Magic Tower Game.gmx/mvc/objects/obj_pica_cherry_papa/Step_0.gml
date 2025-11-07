

if go 
{
    x = 400 + lengthdir_x(len_x,dir);
    y = 304 + lengthdir_y(len_y,dir);
    dir += 3;
    t+=1
    if t=8
    {
        var a=instance_create(x,y,obj_pica_cherry);
        a.direction=dir
        a.speed=spd
        a.sprite_index=sprite_index
        var b=instance_create(x,y,obj_pica_cherry);
        b.direction=dir+180
        b.speed=spd
        b.sprite_index=sprite_index
        dir+=13
        t=0
    }
}

if sh 
{
    x+=random_range(-maxsh,maxsh)
    y+=random_range(-maxsh,maxsh)
}


