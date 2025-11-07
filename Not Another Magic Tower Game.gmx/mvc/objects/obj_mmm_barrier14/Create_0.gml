action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 160;
if(record < 400)
{
    rotateSpd = 2.5;
}
else if(record >= 400 && record < 750)
{
    rotateSpd = 3;
}
else if(record >= 750 && record < 1000)
{
    rotateSpd = 3.5;
}
else if(record >= 1000)
{
    rotateSpd = 4;
}
rotateSpd *= choose(-1,1);
for(i = 0; i < 2; i+=1)
{
    p1[i] = instance_create(x + radius, y, obj_mmm_monster2);
    p1[i].angle = (i + 0.5) * 180;
    p2[i] = instance_create(x - radius, y, obj_mmm_monster2);
    p2[i].angle = (i + 0.5) * 180;
}

for(i = 0; i < 12; i+=1)
{
    px = x + radius * cos(degtorad(i * 30));
    py = y - radius * sin(degtorad(i * 30));
    d[i] = instance_create(px, py, obj_mmm_pathPoint);
}

/*

   -o-

   -o-

/* */
/*  */
