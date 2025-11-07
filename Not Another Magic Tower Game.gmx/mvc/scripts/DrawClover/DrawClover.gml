centerX = argument0;
centerY = argument1;
k = argument2;
d = argument3;
maxiRadius = argument4;
total = argument5;
angle = argument6;
elementObj = argument7;

radius = maxiRadius / 0.9;
for(i = 0; i < 360; i+=floor(360 / total))
{
    ir = d * sin(degtorad(k * i));
    instance_create(centerX + radius * ir * sin(degtorad(i)), centerY - radius * ir * cos(degtorad(i)), elementObj);
}
