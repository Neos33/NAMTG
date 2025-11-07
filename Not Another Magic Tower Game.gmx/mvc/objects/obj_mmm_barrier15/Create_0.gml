subAngle = array_create(21);
stepAngle = array_create(21);

action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 150;
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
for(var i = 0; i < 2; i+=1)
{
    px = x + radius * cos(degtorad(i * 180));
    py = y - radius * sin(degtorad(i * 180));
    b[i] = instance_create(px, py, obj_mmm_pathPoint);
    b[i].image_alpha = 0;
    stepAngle[i] = 2;
    for(var j = 0; j < 4; j+=1)
    {
        p[i,j] = instance_create(b[i].x + 106 * cos(degtorad((j + 0.5) * 90)), b[i].y - 106 * sin(degtorad((j + 0.5) * 90)), obj_mmm_monster2);
        p[i,j].angle = (j - 1) * 90;
        p[i,j].stepAngle = stepAngle[i];
    }
}

for(var i = 0; i < 12; i+=1)
{
    px = x + radius * cos(degtorad(i * 30));
    py = y - radius * sin(degtorad(i * 30));
    d[i] = instance_create(px, py, obj_mmm_pathPoint);
}

/*

o-o
| |
o-o  
        o-o
        | |
        o-o 

/* */
/*  */
