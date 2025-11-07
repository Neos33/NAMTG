if(!start)
{
    if(bbox_bottom > 336)
    {
        with(obj_tlSkeleton)
        {
            speed = 4;
            alarm[3] = 0;
        }
    }

    if(bbox_bottom < 380)
    {
        vspeed += 0.2;
    }
    else
    {
        start = true;
        vspeed = 0;
        instance_create(x,y,view_shaker1);
        sound_fix(sndQuake);
        alarm[3] = 50;
    }
}
else
{
    if(bbox_bottom < -128)
    {
        instance_destroy();
    }
}

