action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 240;
moveSpd = RangeClamp(3 + global.levelSpeed / 4, 3, 7);

for(i = 0; i < 10; i+=1)
{
    d[0,i] = instance_create(x + (i - 5) * 48, y + (i - 5) * 48, obj_mmm_pathPoint); 
    d[1,i] = instance_create(x + (i - 5) * 48, y - (i - 5) * 48, obj_mmm_pathPoint); 
}

for(i = 0; i < 4; i+=1)
{
    p[0,i] = instance_create(x + (i - 1.5) * 120, y + (i - 1.5) * 120, obj_mmm_monster3); 
    p[1,i] = instance_create(x + (i - 2) * 120, y - (i - 2) * 120, obj_mmm_monster3); 
}


/*
o       o
  o   o
    o
  o   o  
o       o

/* */
/*  */
