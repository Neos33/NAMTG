interval = 70;


for(i = 0; i < amount; i+=1)
{
    element[i].isInit = false;
    element[i].isTarget = true;
    element[i].targetX = element[(i + 2) mod amount].x;
    element[i].targetY = element[(i + 2) mod amount].y;
    element[i].spd = point_distance(element[i].x,element[i].y,element[i].targetX,element[i].targetY) / interval;
    element[i].isRotate = true;
    element[i].isCheck = true;
}
if(start)
{
    alarm[2] = 5;
}

alarm[4] = interval + 25;
shoot = true;
alarm[5] = interval + 40;
alarm[6] = 220;



