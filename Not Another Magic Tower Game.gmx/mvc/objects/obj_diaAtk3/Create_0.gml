event_inherited();
maxHP = 10;
nowHP = maxHP;
image_speed = 0.2;
a=instance_create(x+24,y,obj_diaWings);
a.a = 1;
a.image_index = 4;
a=instance_create(x+24,y,obj_diaWings);
a.a = -1;
a.image_index = 6;
alarm[3] = 80;
gravity = 0.45;
//gravity_direction = point_direction(x,y,player.x,player.y);
alarm[5] = 30;
name = "Mr.Diamante";


stop = false;
ttt = 0;

