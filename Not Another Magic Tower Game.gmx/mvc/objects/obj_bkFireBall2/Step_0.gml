if(start)
{
    image_angle = direction - 180;;
    if(image_xscale < 5)
    {      
        image_xscale += 0.11;
    }
    if(image_yscale > 0.1)
    {
        image_yscale -= 0.02;
    }
    speed += 0.4;
}
else if(boom)
{
    if(image_xscale > 0)
    {
        image_xscale -= 0.2;
        x += 70 / 5 * cos(degtorad(direction));
        y -= 70 / 5 * sin(degtorad(direction));       
    }
    else
    {
        //image_xscale = 0;
        fire = instance_create(x,y,obj_bkFireEffect);
        fire.dir =direction;
        with(fire)
        {
            event_user(0);
        }  
        instance_destroy();
    }
}

