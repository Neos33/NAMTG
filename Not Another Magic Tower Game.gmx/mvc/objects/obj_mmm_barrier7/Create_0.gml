action_inherited();
moveSpd = 0;
d2 = 0;
d1 = 0;
gap = 0;
bounceSpd = 0;
acc = 0;
steps = 0;

record = obj_mmm_gameController.currentMeter;
gap = 80;
moveSpd *= choose(-1,1);
bounceGap = 80;
steps = RangeClamp(30 - floor(global.levelSpeed), 10, 30);
acc = bounceGap * 2 / sqr(steps);
bounceSpd = acc * steps;

for(i = 0; i < 4; i+=1)
{
    p[i] = instance_create(x + ((i mod 2) - 0.5) * gap, y + (floor(i / 2) - 0.5) * gap, obj_mmm_monster1);
}

d1 = instance_create(x - 2 * gap, y, obj_mmm_pathPoint);
for(i = 0; i < 4; i+=1)
{
    p1[i] = instance_create(d1.x + ((i mod 2) - 0.5) * gap, d1.y + (floor(i / 2) - 0.5) * gap, obj_mmm_monster1);
}

d2 = instance_create(x + 2 *gap, y, obj_mmm_pathPoint);
for(i = 0; i < 4; i+=1)
{
    p2[i] = instance_create(d2.x + ((i mod 2) - 0.5) * gap, d2.y + (floor(i / 2) - 0.5) * gap, obj_mmm_monster1);
}

decide = choose(0,1);
if(decide == 0)
{
    d2.hspeed = bounceSpd;
    alarm[0] = 1;
}
else
{
    d1.hspeed = -bounceSpd;
    alarm[1] = 1;
}

/*

oooo  oo
oooo  oo

/* */
/*  */
