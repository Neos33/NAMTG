var a = instance_create(random(800),-4,obj_tre_bullet3);
    a.z = 200;
    a.vspeed = 15;
    a.hspeed = random_range(-1,1);
    a.gravity = -cal_friction(a.vspeed,random_range(500,570));
    a.ztime = abs(a.vspeed/a.gravity)*2;
    a.zspd = -a.z / a.ztime - 0.1;
    a.image_index = irandom(24);
    a.alarm[8]=1;
    a.alarm[9]=a.ztime/2;
    a.depth=1000010;
alarm[8] = 2;

