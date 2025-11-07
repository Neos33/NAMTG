finalDir = 0;
for(var i = 0; i < 5; i+=1)
{
    rodElement[i] = instance_create(x + 40 * i * cos(degtorad(finalDir)), y - 40 * i * sin(degtorad(finalDir)), obj_beFinalRodElement);
    rodElement[i].dir = finalDir;
    rodElement[i].type = 0;
    rodElement[i].index = i;
    rodElement[i].image_blend = c_red;
}

