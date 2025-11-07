if(!triggered)
{
    triggered = true;
    if(!global.story[38])
    {
        message_add("The princess was enveloped with a heavy evil breath. She is in a dead sleep no matter how kid tries to wake her.");
        alarm[11] = 3;
        alarm[0] = 30;
    }
    else
    {
        message_add("The princess slowly opened her eyes.");
        count = 4;
        player.frozen = true;
        princess = instance_nearest(player.x,player.y,obj_princess);
        alarm[1] = 10;
    }
}

