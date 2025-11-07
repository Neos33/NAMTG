action_inherited();
radius = 80;
moveSpd = RangeClamp(3 + global.levelSpeed / 2, 3, 8) * choose(-1,1);

for(i = 0; i < 3; i+=1)
{
    c[i] = instance_create(x - 280 + i * 280, y, obj_mmm_pathPoint);
    c[i].image_alpha = 0;
    c[i].hspeed = moveSpd;
    rSpd[i] = random_range(3,5) * choose(-1,1);
    for(j = 0; j < 6; j +=1)
    {
        px = c[i].x + radius * cos(degtorad(j * 60));
        py = c[i].y - radius * sin(degtorad(j * 60));
        d[i,j] = instance_create(px, py, obj_mmm_pathPoint);
    }
    
    p[i] = instance_create(c[i].x + radius / 2, c[i].y, obj_mmm_monster1);
}


/*

 o    -   -
| |  o | | |
 -    -   o

/* */
/*  */
