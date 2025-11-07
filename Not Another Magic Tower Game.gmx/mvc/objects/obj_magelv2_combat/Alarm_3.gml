var element;
for(var i = 0;i<5;i+=1)
{
    tempAng = eAngle + 72 * i;
    if(tempAng < 0)
    {
        tempAng += 360;
    }
    element[i] = instance_create(x + 128 * cos(degtorad(eAngle + 72 * i)), y - 80 * sin(degtorad(eAngle + 72 * i)), obj_mageElement);
    element[i].image_xscale = 1.2;
    element[i].image_yscale = 1.2;
    element[i].image_index = i;
    element[i].index = i;
    element[i].targetX = x + 96 * cos(degtorad(tempAng));
    element[i].targetY = y - 40 * sin(degtorad(tempAng));
    element[i].targetAlpha = abs(abs((eAngle + 72 * i) mod 360) - 90) / 240 + 0.25;
    element[i].targetScale = abs(abs((eAngle + 72 * i) mod 360) - 90) / 240 + 0.25;
}
x = 400;
y = 304;

