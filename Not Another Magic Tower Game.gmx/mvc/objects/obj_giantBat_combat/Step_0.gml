if(!transformed)
{
    if(targetScale > 3)
    {
        if(global.combatTime mod (13 - targetScale) == 0)
        {              
            var scale = random_range(1,2);
            var b = instance_create(x,y,obj_giantBatBullet1);
            b.speed = random_range(3,5);
            b.direction = random_range(0,360);
            b.image_xscale = scale;
            b.image_yscale = scale;
        }
    }
    if(image_xscale < targetScale)
    {
        image_xscale += 0.01;
        image_yscale += 0.01;
    }
    else
    {
        if(targetScale == 10)
        {
            transformed = true;
            transformInterval = 50;
            transformCount = 0;
            alarm[5] = 1;
        }
    }
}
else
{
    if(summon)
    {
        if(coolDownTime > 0)
        {
            coolDownTime -= 1;
        }
        else
        {
            summonedCount += 1;
            var summonX = random_range(150,650);
            var summonY = random_range(100, 200);
            var summonEffect = instance_create(summonX, summonY, obj_giantBatSummonEffect);
            sound_fix(snd_touhou_twinkle3);
            if(summonedCount < 3)
            {
                summonEffect.summonObj = obj_giantBatSummoned1;
            }
            else
            {
                summonEffect.summonObj = choose(obj_giantBatSummoned1, obj_giantBatSummoned2);
            }
            coolDownTime = RangeClamp(150 - summonedCount * 5, 100, 150);
        }
    }
}

