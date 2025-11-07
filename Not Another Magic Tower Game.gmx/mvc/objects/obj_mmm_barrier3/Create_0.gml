action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 160;
x += radius * choose(-1,1);
if(record < 400)
{
    level = 1;
    rotateSpd = 4;
}
else if(record >= 400 && record < 750)
{
    level = 2;
    rotateSpd = 5;
}
else if(record >= 750 && record < 1000)
{
    level = 3;
    rotateSpd = 6;
}
else if(record >= 1000)
{
    level = 4;
    rotateSpd = 7;
}
rotateSpd *= choose(-1,1);
for(i = 0; i < level; i+=1)
{
    p[i] = instance_create(x + radius * sign(rotateSpd), y, obj_mmm_monster2);
    p[i].angle = i * 360 / level;
    p[i].stepAngle = rotateSpd;
}

for(i = 0; i < 7; i+=1)
{
    d[i] = instance_create(x + radius * sign(rotateSpd) + (i - 3) * 40 , py, obj_mmm_pathPoint);
}

/*
  \ /
   o 
   |  

/* */
/*  */
