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


