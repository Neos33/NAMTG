action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 150;
if(record < 400)
{
    rotateSpd = 2;
}
else if(record >= 400 && record < 750)
{
    rotateSpd = 2.5;
}
else if(record >= 750 && record < 1000)
{
    rotateSpd = 3;
}
else if(record >= 1000)
{
    rotateSpd = 3.5;
}

b[0] = instance_create(x + (radius + 120), y, obj_mmm_pathPoint);
b[1] = instance_create(x - (radius + 120), y, obj_mmm_pathPoint);
for(i = 0; i < 2; i += 1)
{
    if(i == 1)
    {
        offset = 0.5;
    }
    else
    {
        offset = 0;
    }
    for(j = 0; j < 8; j+=1)
    {
        px = b[i].x + radius * cos(degtorad((j + offset) * 45));
        py = b[i].y - radius * sin(degtorad((j + offset) * 45));
        p[i,j] = instance_create(px, py, obj_mmm_monster2);
        p[i,j].angle = j * 45;
        p[i,j].stepAngle = rotateSpd * sign(i-0.5);
    }
}


/*
  /      \
 o        o
 
  o-    -o
 
 o        o
  \      /

/* */
/*  */
