if(crossWall)
{
    if(!pathCrossWall)
    {
        wallCrossChange = true;
        path_end();
        path_delete(path);
        event_user(2);
        wallCrossChange = false;
    }
}
else
{
    if(pathCrossWall)
    {   
        if(!place_meeting(x,y,obj_dwBombWall))
        {
            wallCrossChange = true;
            path_end();
            path_delete(path);
            event_user(2);
            wallCrossChange = false;
        }
    }
}

if(toTarget)
{
    if(instance_exists(obj_darkWarrior_item))
    {
        path_end();
        event_user(1);
    }
}

if(hp <= 150 && !crazy)
{
    crazy = true;
    alarm[4] = 1;
}

if(hp <= 50 && !superCrazy)
{
    superCrazy = true;
}

if(godtime > 0)
{
    godtime -= 1;
}

/*if(keyboard_check_pressed(vk_space))
{
    drawGrid ^= 1;
}

/* */
/*  */
