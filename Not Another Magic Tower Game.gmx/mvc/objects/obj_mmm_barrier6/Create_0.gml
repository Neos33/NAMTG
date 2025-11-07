action_inherited();
record = obj_mmm_gameController.currentMeter;
vspeed = global.levelSpeed;
radius = 175;
gap = 70;

if(record < 400)
{
    level = 1;
    moveSpd = 4;
}
else if(record >= 400 && record < 700)
{
    level = 2;
    moveSpd = 5.5;
}
else if(record >= 700)
{
    level = 3;
    moveSpd = 7;
}

moveSpd *= choose(-1,1);

for(var i = 0; i < 4; i+=1)
{
    p[i] = instance_create(x + ((i mod 2) - 0.5) * gap, y + (floor(i / 2) - 0.5) * gap, obj_mmm_monster1);
}

for(var i = 0; i < 10; i+=1)
{
    d1[i] = instance_create(x - radius * sign(moveSpd) + i * gap / 2 * sign(moveSpd), y - radius, obj_mmm_pathPoint);
    d1[i].hspeed = moveSpd;
    d2[i] = instance_create(x + radius, y - radius * sign(moveSpd) + i * gap / 2 * sign(moveSpd), obj_mmm_pathPoint);
    d2[i].vspeed = moveSpd + global.levelSpeed;
    d3[i] = instance_create(x + radius * sign(moveSpd) - i * gap / 2 * sign(moveSpd), y + radius, obj_mmm_pathPoint);
    d3[i].hspeed = -moveSpd;
    d4[i] = instance_create(x - radius, y + radius * sign(moveSpd) - i * gap / 2 * sign(moveSpd), obj_mmm_pathPoint);
    d4[i].vspeed = -moveSpd + global.levelSpeed ;
}

for(var i = 0; i < level; i+=1)
{
    p1[i] = instance_create(x - radius * sign(moveSpd) + i * gap * sign(moveSpd), y - radius, obj_mmm_monster1);
    p1[i].hspeed = moveSpd;
    p2[i] = instance_create(x + radius, y - radius * sign(moveSpd) + i * gap * sign(moveSpd), obj_mmm_monster1);
    p2[i].vspeed = moveSpd + global.levelSpeed;
    p3[i] = instance_create(x + radius * sign(moveSpd) - i * gap * sign(moveSpd), y + radius, obj_mmm_monster1);
    p3[i].hspeed = -moveSpd;
    p4[i] = instance_create(x - radius, y + radius * sign(moveSpd) - i * gap * sign(moveSpd), obj_mmm_monster1);
    p4[i].vspeed = -moveSpd + global.levelSpeed;
}


/*

ooo     o
        o
   oo   o
o  oo
o
o     ooo

/* */
/*  */
