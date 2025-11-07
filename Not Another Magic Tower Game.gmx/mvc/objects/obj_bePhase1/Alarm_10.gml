if(timeAlpha < 1)
{
    timeAlpha += 0.02;
    alarm[10] = 1;
}
else
{
    timeStart = true;
    alarm[3] = 10;
    if(!instance_exists(obj_beMagicCircle))
    {
        instance_create(x,y,obj_beMagicCircle);
    }
}

