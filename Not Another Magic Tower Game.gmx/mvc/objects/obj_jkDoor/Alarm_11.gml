if(player.image_alpha < 1)
{
    player.image_alpha += 0.05;
    alarm[11] = 1;
}
else
{
    obj_stepRecord.alarm[0] = 1;
}

