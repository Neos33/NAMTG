/*if(tailCount > 0)
{
    tail = instance_create(obj_burningKnight_combat.x, obj_burningKnight_combat.y - 32, obj_bkRotateTail);
    tailScale = 0.16 + tailCount * 0.01;
    tail.image_xscale = tailScale;
    tail.image_yscale = tailScale;
    tail.image_alpha = tailCount / 9;
    tail.angle = 90;
    tail.rDir = rotateDir;
    tailCount -= 1;
    alarm[1] = 1;
}

/* */
/*  */
