if(y+vspeed>529)
{
    gravity=0;
    y=529;
}
if(place_meeting(x,y,bullet))
{
    with(instance_place(x,y,bullet))
    {
        alarm[0]=0;
        vspeed=-16;
        hspeed=0;
        image_angle = 90;
    }
}

