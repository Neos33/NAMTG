if(xxCount > 0)
{
    for(var i = 0; i < 4; i += 1)
    {
        var xx = instance_create(x,y,obj_bsFireShot);
        xx.image_angle = 90 * i;
    }
    xxCount -= 1;
    alarm[10] = 30;
}
else
{
    trace = false;
    alarm[11] = 50;
}


