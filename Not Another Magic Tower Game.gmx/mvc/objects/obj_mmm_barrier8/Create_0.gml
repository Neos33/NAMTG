action_inherited();
record = obj_mmm_gameController.currentMeter;
gap = 80;
radius = 150;
moveSpd = RangeClamp(2 + global.levelSpeed, 4, 10);

p1[0] = instance_create(x - gap, y, obj_mmm_monster1);
p1[1] = instance_create(x, y, obj_mmm_monster1);
p1[2] = instance_create(x + 2 * gap, y, obj_mmm_monster1);
p1[3] = instance_create(x - 3 * gap, y - radius, obj_mmm_monster1);
p1[4] = instance_create(x + 4 * gap, y - radius, obj_mmm_monster1);
p1[5] = instance_create(x + 5 * gap, y - radius, obj_mmm_monster1);


p2[0] = instance_create(x, y - radius, obj_mmm_monster1);
p2[1] = instance_create(x + 2 * gap, y - radius, obj_mmm_monster1);
p2[2] = instance_create(x - 2 * gap, y - radius, obj_mmm_monster1);

p3[0] = instance_create(x - gap, y + radius, obj_mmm_monster1);
p3[1] = instance_create(x, y + radius, obj_mmm_monster1);
p3[2] = instance_create(x + 2* gap, y + radius, obj_mmm_monster1);
p3[3] = instance_create(x + 4 * gap, y + radius, obj_mmm_monster1);
p3[4] = instance_create(x - 3 * gap, y + radius, obj_mmm_monster1);
p3[5] = instance_create(x - 4 * gap, y + radius, obj_mmm_monster1);


for(var i = 0; i<6; i+=1)
{
    if instance_exists(p1[i]) p1[i].hspeed = -moveSpd;
    if instance_exists(p2[i]) p2[i].hspeed = moveSpd;
    if instance_exists(p3[i]) p3[i].hspeed = moveSpd;
}

/*

   o o o
    oo o
    o oo

/* */
/*  */
