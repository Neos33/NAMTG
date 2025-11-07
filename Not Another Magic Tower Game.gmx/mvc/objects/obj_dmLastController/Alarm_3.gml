if(instance_exists(obj_dmSwordAndSickle))
{
    if(point_distance(obj_darkMage_combat2.x, obj_darkMage_combat2.y, 400, 288) < 256)
    {
        skill = choose(0,1);   
    }
    else
    {
        skill = 0;
    }
    
    if(skill == 0)
    {
        with(obj_darkMage_combat2)
        {
            reached = false;
            targetX = player.x;
            targetY = player.y;
        }
        alarm[4] = 1;
    }
    else if(skill == 1)
    {    
        alarm[5] = 1;
    }
}
else
{
    alarm[10] = 1;
}

