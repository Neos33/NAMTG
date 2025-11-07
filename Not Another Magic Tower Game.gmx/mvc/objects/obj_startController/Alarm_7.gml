//instance_create(0,0,obj_geFinalCircleDrawer);
for(i = 0; i <= 800; i += 80)
{
    for(j = 100; j <= 500; j += 80)
    {
        ranAlpha = choose(0,0.2,0.4,0.6,0.8);
        rndNum = random_range(0,10);
        change = false;
        if(rndNum > 9)
        {
            change = true;
        }
        circle = instance_create(i,j,obj_geFinalCircle);
        circle.alpha = ranAlpha;
        if(change)
        {
            circle.alarm[0] = 10;
        }
    }
}
obj_geStartRedGayEffect.alarm[2] = 1;

