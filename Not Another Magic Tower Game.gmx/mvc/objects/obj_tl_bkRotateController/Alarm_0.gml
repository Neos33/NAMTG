if(count > 0)
{   
    var rotate = instance_create(obj_tl_burningKnight.x, obj_tl_burningKnight.y - 32, obj_tl_bkRotateElement);
    
    var rotateDir;
    if((count mod 2) == 0)
    {
        rotateDir = 1;
    }
    else
    {
        rotateDir = -1;
    }
    rotate.angle = 90;
    rotate.rDir = rotateDir;
    tailCount = 8;
    for(var i = 0; i < tailCount; i+=1)
    {
        var tAngle = 90 - rotateDir * (i + 1 * 2);
        var tail = instance_create(obj_tl_burningKnight.x + (31 - i) * cos(degtorad(tAngle)), obj_tl_burningKnight.y - (31 - i) * sin(degtorad(tAngle)), obj_tl_bkRotateTail);
        var tailScale = 0.22 - i * 0.02;
        tail.image_xscale = tailScale;
        tail.image_yscale = tailScale;
        tail.image_alpha = 1 - i / 9;
        tail.angle = tAngle;
        tail.rDir = rotateDir;
        tail.r = 30 - i * 2;
    }
    //alarm[1] = 1;
    count -= 1;
    alarm[0] = 15 + 15 * obj_tl_burningKnight.hp / obj_tl_burningKnight.oHP;
}
else
{
    alarm[2] = 1;
}

