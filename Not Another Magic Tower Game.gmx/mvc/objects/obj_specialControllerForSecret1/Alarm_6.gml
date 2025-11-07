/// @description  Destroy Skeleton King
if(instance_exists(obj_skeletonKing))
{
    with(obj_skeletonKing)
    {
        instance_destroy();
    }
    sound_fix(sndDeath);
}

if(obj_messageController.shakeSize > 0)
{
    obj_messageController.shakeSize -= 1;
    alarm[6] = 5;
}
else
{
    obj_messageController.viewshake = false;
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    global.story[8] = true;
    player.frozen = false;
    instance_destroy();
}

