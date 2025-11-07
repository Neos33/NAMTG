centerX1 = 240;
centerY1 = 272;
centerX2 = 560;
centerY2 = 272;
r = 64;
rspd = 3;
for(i = 0; i < 3; i += 1)
{
    p1[i] = instance_create(centerX1 + lengthdir_x(r, i * 120),centerY1 + lengthdir_y(r,i * 120),obj_faroMMMMonster3);
    p1[i].rAngle = i * 90;
    p2[i] = instance_create(centerX2 + lengthdir_x(r, 180 - i * 120),centerY2 + lengthdir_y(r,180 - i * 120),obj_faroMMMMonster3);
    p2[i].rAngle = i * 90;
}
/*
path1 = path_add();
path_set_closed(path1,true); 
path_set_kind(path1,1);
path_set_precision(path1,4);

centerX = 240;
centerY = 272;
r = 64;
spd = 2;
for(i = 0; i < 360; i += 45)
{
    path_add_point(path1, centerX + lengthdir_x(r, i), centerY + lengthdir_y(r,i), 100);
}

for(i = 0 i < 360; i += 90)
{
    p = instance_create(centerX + lengthdir_x(r, i),centerY + lengthdir_y(r,i),obj_faroMMMMonster3);
    p.path = path1;
    p.pos = i / 90 * 0.25;
    p.spd = spd;
    p.start = true;
    with(p)
    {
        event_user(0);
    }
}

path2 = path_add();
path_set_closed(path2,true); 
path_set_kind(path2,1);
path_set_precision(path2,4);

centerX = 560;
centerY = 272;

for(i = 0; i > -360; i -= 45)
{
    path_add_point(path2, centerX + lengthdir_x(r, i), centerY + lengthdir_y(r,i), 100);
}

for(i = 0 i > -360; i -= 90)
{
    p = instance_create(centerX + lengthdir_x(r, i),centerY + lengthdir_y(r,i),obj_faroMMMMonster3);
    p.path = path2;
    p.pos = -i / 90 * 0.25;
    p.spd = spd;
    p.start = true;
    with(p)
    {
        event_user(0);
    }
}

/* */
/*  */
