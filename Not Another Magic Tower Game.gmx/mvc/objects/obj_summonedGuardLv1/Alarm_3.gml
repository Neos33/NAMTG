if(!key)
{
    if(x > player.x)
    {
        key = instance_create(x - 12, y - 2, obj_keyBoomerang1);
    }
    else
    {
        key = instance_create(x + 12, y - 2, obj_keyBoomerang1);
    }
}
key.onHold = true;
key.onBoom = false;
key.onSmash = false;
key.onRun = false;
//key.image_angle = -16;
alarm[4] = 30;

