action_inherited();
moveAngle = 0;

record = obj_mmm_gameController.currentMeter;

radius = 120;
rotateSpd = RangeClamp(1 + global.levelSpeed / 4, 1,5) * choose(-1,1);
moveSpd = RangeClamp(1 + global.levelSpeed / 3, 1, 5) * choose(-1,1);
for(i = 0; i < 3; i+=1)
{
    p[i] = instance_create(x, y, obj_mmm_monster2);
    p[i].angle = i * 120;
    p[i].stepAngle = rotateSpd;
}

for(i = 0; i < 6; i+=1)
{
    d[i] = instance_create(x, y + (i - 2.5) * radius * 2 / 6, obj_mmm_pathPoint);
}

b1 = instance_create(x - 175, y, obj_mmm_monster3);
b2 = instance_create(x + 175, y, obj_mmm_monster3);
/*
   \ /
o   o   o
    |  

/* */
/*  */
