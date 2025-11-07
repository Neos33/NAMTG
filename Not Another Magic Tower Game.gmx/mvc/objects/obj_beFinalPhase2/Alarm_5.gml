dis = point_distance(x,y, 800 - 170,100);
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
if(point_distance(x,y,800 - 170,100) < spd)
{
    hspeed = 0;
    vspeed = 0;
    x = 800 - 170;
    y = 100;
    count6 = 0;
    count6Ang1 = 180 - (-45);
    count6Ang2 = 180 - 100;
    count6Ang3 = 180 - 135;
    count6SX1 = 800 - 190;
    count6SX2 = 800 - 160;
    count6SX3 = 800 - 173;
    alarm[6] = 20;
}
else
{
    move_towards_point(800 - 170,100,spd);
    alarm[5] = 1;
}

