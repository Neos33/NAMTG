action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 280;
if(record < 500)
{
    level = 1;
    angleSpd = 5;
}
else
{
    level = 2;
    angleSpd = 6;
}
//angleSpd *= choose(-1,1);
for(i = 0; i < 3 + 2 * level; i+=1)
{
    px = x - 180 + 80 * cos(degtorad(i * (90 + level * 50) / (3 + 2 * level - 1)));
    py = y + (i - (3 + 2 * level - 1) / 2) * radius / (3 + 2 * level - 1);
    p1[i] = instance_create(px, py, obj_mmm_monster2);
    px = x + 180 - 80 * cos(degtorad(i * (90 + level * 50) / (3 + 2 * level - 1)));
    p2[i] = instance_create(px, py, obj_mmm_monster2);
    p2[i].angle = 180;
}
/*

o   
    o
        o

/* */
/*  */
