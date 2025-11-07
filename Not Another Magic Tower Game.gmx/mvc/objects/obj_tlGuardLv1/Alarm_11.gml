if(image_xscale < 1)
{
    image_xscale += 0.1;
    image_yscale += 0.1;
    alarm[11] = 1;
}
else
{
    alarm[3] = 20;
    if(x > player.x)
    {
        key = instance_create(x - 12, y - 2, obj_tlGuardLv1Key);
    }
    else
    {
        key = instance_create(x + 12, y - 2, obj_tlGuardLv1Key);
    }
    
    key.parent = instance_position(x,y,obj_tlGuardLv1);
    key.onHold = true;
    key.onBoom = false;
    key.onSmash = false;
}

