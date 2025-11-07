if(darkCount2 > 0)
{
    var p = instance_create(x,y,obj_dmDarkEnergyBall2);
    var rLen = random_range(16,96);
    var rDir = random_range(0,180);
    p.targetX = player.x + lengthdir_x(rLen, rDir);
    p.targetY = player.y + lengthdir_y(rLen, rDir);
    p.direction = point_direction(p.x,p.y,p.targetX, p. targetY);
    darkCount2 -=1;
    alarm[4] = 40;
}
else
{
    if(player_is_alive())
    {
        if(hp > 80)
        {
            alarm[5] = 100;
        }
        else
        {
            sound_fix(sndBEDevilLaugh);
            alarm[11] = 80;
        }  
    }
}

