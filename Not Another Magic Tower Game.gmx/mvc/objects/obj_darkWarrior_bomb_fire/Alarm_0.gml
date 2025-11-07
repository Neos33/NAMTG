if(sprInd < sprCount)
{
    //image_xscale += 0.05;
    //image_yscale += 0.05;
    sprite_index = spr[sprInd];
    sprInd += 1;
    alarm[0] = 5;
}
else
{
    start = true;
    sound_fix(sndFire1);
    if(leftBombWall)
    {
        var bombWall = instance_position(x-48-leftP * 32,y-16,obj_dwBombWall);
        if(bombWall)
        {
            bombWall.alarm[0] = 1;
        }
        leftBombWall = false;
    }
    if(rightBombWall)
    {
        var bombWall = instance_position(x+16+rightP * 32,y-16,obj_dwBombWall);
        if(bombWall)
        {
            bombWall.alarm[0] = 1;
        }
        rightBombWall = false;
    }
    if(upBombWall)
    {
        var bombWall = instance_position(x-16,y-48-upP * 32,obj_dwBombWall);
        if(bombWall)
        {
            bombWall.alarm[0] = 1;
        }
        upBombWall = false;
    }
    if(downBombWall)
    {
        var bombWall = instance_position(x-16,y+16+downP * 32,obj_dwBombWall);
        if(bombWall)
        {
            bombWall.alarm[0] = 1;
        }
        downBombWall = false;
    }
    var h = instance_create(x-16-leftP * 32, y-16, obj_dwBombDmg);
    h.image_xscale = leftP + rightP + 1;
    var v = instance_create(x-16, y-16-upP * 32, obj_dwBombDmg);
    v.image_yscale = upP + downP + 1;
    alarm[1] = 30;
    alarm[2] = 30;
}

