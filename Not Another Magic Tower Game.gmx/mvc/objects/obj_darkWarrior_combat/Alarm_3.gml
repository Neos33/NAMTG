if(instance_number(obj_darkWarrior_bomb) < bombCount)
{
    var factX = round((x - 16) / 32);
    var factY = round((y - 16) / 32);
    var bx = 32 * factX + 16;
    var by = 32 * factY + 16;
    if(!instance_position(bx,by,block) && !instance_position(bx,by,obj_dwBombWall))
    {
        var bomb = instance_create(bx, by, obj_darkWarrior_bomb);
        bomb.p = powerCount;
        alarm[3] = 30;
    }
    else
    {
        alarm[3] = 1;
    }
}
else
{
    alarm[3] = 1;
}

