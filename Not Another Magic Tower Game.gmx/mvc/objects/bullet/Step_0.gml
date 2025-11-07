if(energy >= MaxBulletEnergy)
{
    if(place_meeting(x + hspeed, y, obj_specialBlock6))
    {
        b = instance_nearest(x + hspeed, y, obj_specialBlock6);
        with(b)
        {
            event_user(0);
        }
        instance_destroy();
    }
}



if(place_meeting(x+hspeed,y,block)){
a=instance_place(x+hspeed,y,block)
if(a.object_index=block)instance_destroy()
else if(a.visible=1)instance_destroy()
}

if(place_meeting(x+hspeed,y,obj_wall)){
a=instance_place(x+hspeed,y,obj_wall)
if(a.object_index=obj_wall)instance_destroy()
else if(a.visible=1)instance_destroy()
}

if(place_meeting(x+hspeed,y,slipblock)){
a=instance_place(x+hspeed,y,slipblock)
if(a.object_index=slipblock)instance_destroy()
else if(a.visible=1)instance_destroy()
}

/*if(global.isTrack && global.trackOn)
{
    trackDis = point_distance(x,y,global.trackX, global.trackY);
    if(trackDis > 0)
    {
        if(trackDis > 8)
        {
            move_towards_point(global.trackX, global.trackY, 16);
        }
        else
        {
            x = global.trackX;
            y = global.trackY;
            hspeed = 0;
            vspeed = 0;
        }
    }
    else
    {
        instance_destroy();
    }
    
}

/* */
if(trace)
{
    move_towards_point(target.x,target.y,16);
    image_angle = direction;
}

/* */
/*  */
