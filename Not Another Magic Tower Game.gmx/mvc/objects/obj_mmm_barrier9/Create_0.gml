//levelSpd = 0;

action_inherited();
record = obj_mmm_gameController.currentMeter;
radSpd = 15;
radius = 40;
angle = 0;
rotateSpd = RangeClamp(3 + global.levelSpd / 2, 3, 8);

p1 = instance_create(x - radius, y, obj_mmm_monster1);
p2 = instance_create(x + radius, y, obj_mmm_monster1);

alarm[0] = 1;
/*

   o
   o

/* */
/*  */
