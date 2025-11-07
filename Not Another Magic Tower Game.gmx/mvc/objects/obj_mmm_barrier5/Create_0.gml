action_inherited();
record = obj_mmm_gameController.currentMeter;
radius = 180;
moveSpd = RangeClamp(2 + global.levelSpeed, 4, 10);

p1[0] = instance_create(x - 25, y, obj_mmm_monster2);
p1[1] = instance_create(x + 115, y, obj_mmm_monster2);
p1[2] = instance_create(x + 345, y, obj_mmm_monster2);
p1[3] = instance_create(x - 255, y, obj_mmm_monster2);


p2[0] = instance_create(x - 35, y - radius, obj_mmm_monster2);
p2[1] = instance_create(x + 105, y - radius, obj_mmm_monster2);
p2[2] = instance_create(x + 335, y - radius, obj_mmm_monster2);
p2[3] = instance_create(x - 265, y - radius, obj_mmm_monster2);

p3[0] = instance_create(x - 15, y + radius, obj_mmm_monster2);
p3[1] = instance_create(x + 125, y + radius, obj_mmm_monster2);
p3[2] = instance_create(x + 355, y + radius, obj_mmm_monster2);
p3[3] = instance_create(x - 245, y + radius, obj_mmm_monster2);

for(i = 0; i<4;i+=1)
{
    p1[i].hspeed = -moveSpd;
    p1[i].angle = 180;
    p2[i].hspeed = moveSpd;
    p3[i].hspeed = moveSpd;
}

/*

o-  o-  o-
 -o  -o  -o
  o-  o-  o-

/* */
/*  */
