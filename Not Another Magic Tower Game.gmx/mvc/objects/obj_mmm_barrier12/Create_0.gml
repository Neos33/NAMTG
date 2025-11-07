action_inherited();
radius = 60;
moveSpd = RangeClamp(3 + global.levelSpeed / 2, 3, 8) * choose(-1,1);

for(i = 0; i < 3; i+=1)
{
    p[i] = instance_create(x - 160 + i * 160, y, obj_mmm_monster1);
    p[i].hspeed = moveSpd;
    b[i] = instance_create(x,y,obj_mmm_monster1);
}

for(i = 0; i < 10; i += 1)
{
    d[i] = instance_create(x + (i- 5) * 40, y, obj_mmm_pathPoint);
    d[i].hspeed = moveSpd;
}

b[0].hspeed = 1.3 * moveSpd;
b[1].hspeed = 0.7 * moveSpd;
b[2].hspeed = -0.8 * moveSpd;
/*

   o
o   o   o
      o    

/* */
/*  */
