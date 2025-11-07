action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 100;

if(record < 400)
{
    level = 1;
    rotateSpd = 2.5;
}
else if(record >= 400 && record < 750)
{
    level = 2;
    rotateSpd = 3;
}
else if(record >= 750 && record < 1000)
{
    level = 3;
    rotateSpd = 3.5;
}
else if(record >= 1000)
{
    level = 3;
    rotateSpd = 4;
}
rotateSpd *= choose(-1,1);
for(i = 0; i < level + 1; i+=1)
{
    px = x + radius * cos(degtorad(i * 360 / (level + 1)));
    py = y - radius * sin(degtorad(i * 360 / (level + 1)));
    p[i] = instance_create(px, py, obj_mmm_monster3);
}

for(i = 0; i < 8; i+=1)
{
    px = x + radius * cos(degtorad(i * 45));
    py = y - radius * sin(degtorad(i * 45));
    d[i] = instance_create(px, py, obj_mmm_pathPoint);
}

for(i = 0; i < 3; i+=1)
{
    b[i] = instance_create(x - 200 + 200 * i, y, obj_mmm_monster1);
}

/*

o   
    o
        o

/* */
/*  */
