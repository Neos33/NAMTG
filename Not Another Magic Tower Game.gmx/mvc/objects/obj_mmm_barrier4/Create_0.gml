action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 160;
isStop = choose(false,true);
stopFlag = 0;
if(record < 400)
{
    level = 1;
    rotateSpd = 2.5;
    stopInterval = 30;
}
else if(record >= 400 && record < 750)
{
    level = 1;
    rotateSpd = 3;
    stopInterval = 25;
}
else if(record >= 750 && record < 1000)
{
    level = 1;
    rotateSpd = 3.5;
    stopInterval = 20;
}
else if(record >= 1000)
{
    level = 1;
    rotateSpd = 4;
    stopInterval = 15;
}
rotateSpd *= choose(-1,1);
for(i = 0; i < level + 1; i+=1)
{
    px = x + radius * cos(degtorad(i * 360 / (level + 1)));
    py = y - radius * sin(degtorad(i * 360 / (level + 1)));
    p[i] = instance_create(px, py, obj_mmm_monster2);
    p[i].angle = i * 360 / (level + 1);
    p[i].stepAngle = 1 + floor(global.levelSpeed);
}

for(i = 0; i < 12; i+=1)
{
    px = x + radius * cos(degtorad(i * 30));
    py = y - radius * sin(degtorad(i * 30));
    d[i] = instance_create(px, py, obj_mmm_pathPoint);
}

if(isStop)
{
    alarm[0] = 30;
}
/*
 o
  \
     
    \
     o

/* */
/*  */
