dis = point_distance(x,y,170,100);
if(spd < dis / 30)
{
    spd += 0.1;
}
else
{
    if(spd > 3)
    {
        spd -= 0.1;
    }
}
if(point_distance(x,y,170,100) < spd)
{
    hspeed = 0;
    vspeed = 0;
    x = 170;
    y = 100;
    count6 = 0;
    count6Ang1 = -45;
    count6Ang2 = 100;
    count6Ang3 = 135;
    count6SX1 = 190;
    count6SX2 = 160;
    count6SX3 = 173;
    alarm[6] = 20;
}
else
{
    move_towards_point(170,100,spd);
    alarm[5] = 1;
}

