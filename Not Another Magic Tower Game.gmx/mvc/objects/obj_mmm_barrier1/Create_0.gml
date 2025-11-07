action_inherited();
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2;
radius = 280;
a = instance_create(x,y,obj_mmm_monster3);
b1 = instance_create(x - radius,y, obj_mmm_monster2);
b2 = instance_create(x + radius,y, obj_mmm_monster2);
b2.angle = 180;

alarmRnd1 = irandom_range(0, 50); 
alarmRnd2 = irandom_range(0, 50); 
alarmInterval = irandom_range(40, 80); 

alarm[0] = alarmRnd1;
alarm[2] = alarmRnd2;



/*

o-   o    -o

/* */
/*  */
