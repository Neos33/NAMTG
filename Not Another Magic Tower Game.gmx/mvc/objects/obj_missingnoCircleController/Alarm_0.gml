randomX = random_range(32,768);
if(randomX < 304)
{
    randomY = random_range(128,208);
}
else if(randomX < 400)
{
    randomY = random_range(128,288);
}
else
{
    randomY = random_range(32,224);
}
b = instance_create(randomX, randomY,obj_missingnoCircles);
alarm[0] = 30;

