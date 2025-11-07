finalDir = 90;
for(i = 0; i < 5; i+=1)
{
    rodElement[i] = instance_create(x + 40 * (i - 2) * cos(degtorad(finalDir)), y - 40 * (i - 2) * sin(degtorad(finalDir)), obj_beFinalRodElement);
    rodElement[i].dir = finalDir;
    rodElement[i].type = 2;
    rodElement[i].index = i - 2;
    rodElement[i].image_blend = c_silver;
}

