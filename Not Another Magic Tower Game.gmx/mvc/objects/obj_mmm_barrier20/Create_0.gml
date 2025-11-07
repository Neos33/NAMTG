action_inherited();
radius = 160;
rotateSpd = RangeClamp(2 + global.levelSpeed / 8, 2, 4);

b[0] = instance_create(x, y, obj_mmm_pathPoint);
b[1] = instance_create(x - (radius + 20), y - (radius + 20), obj_mmm_pathPoint);
b[2] = instance_create(x + (radius + 20), y - (radius + 20), obj_mmm_pathPoint);
b[3] = instance_create(x - (radius + 20), y + (radius + 20), obj_mmm_pathPoint);
b[4] = instance_create(x + (radius + 20), y + (radius + 20), obj_mmm_pathPoint);

rSpd[0] = rotateSpd * choose(-1,1);
rSpd[1] = -rotateSpd;
rSpd[2] = rotateSpd;
rSpd[3] = rotateSpd;
rSpd[4] = -rotateSpd;

centerRotateAngleSpd = 5;
for(i = 0; i < 5; i+=1)
{
    b[i].image_alpha = 0;
    for(j = 0; j < 3; j += 1)
    {
        if(i == 0)
        {
            p[i, j] = instance_create(b[i].x + (radius - 20) * cos(degtorad(120 * j)), b[i].y - (radius - 20) * sin(degtorad(120 * j)), obj_mmm_monster3);
        }
        else
        {
            p[i, j] = instance_create(b[i].x + radius * cos(degtorad(120 * j)), b[i].y - radius * sin(degtorad(120 * j)), obj_mmm_monster3);
        }
    }
    if(i > 0)
    {
        for(j = 0; j < 6; j += 1)
        {
            d[i, j] = instance_create(b[i].x + radius * cos(degtorad(45 * j)), b[i].y - radius * sin(degtorad(45 * j)), obj_mmm_pathPoint);
        }
    }
}

/*

o   
    o
        o

/* */
/*  */
