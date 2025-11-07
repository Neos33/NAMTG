action_inherited();
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2;
radius = 280;
radius1 = 160;

r[0] = -320;
r[1] = -160;
r[2] = -80;
r[3] = 80;
r[4] = 160;
r[5] = 320;
for(i = 0; i < 6; i += 1)
{
    a[i] = instance_create(x,y + r[i], obj_mmm_monster1);
}

for(i = 0; i < 10; i+=1)
{
    b1[i] = instance_create(x - radius,y + (i - 4.5) * 68, obj_mmm_monster2);
    b2[i] = instance_create(x + radius,y + (i - 4.5) * 68, obj_mmm_monster2);
    b2[i].angle = 180;
}




alarm[0] = 1;



/*

o-    o
o-
o-    o
o-    o
o-
o-    o
o-    o
o-
o-    o

/* */
/*  */
