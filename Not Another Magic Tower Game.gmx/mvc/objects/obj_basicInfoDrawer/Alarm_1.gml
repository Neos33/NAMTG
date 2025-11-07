        global.currentLevel += 1;
        levelRequired = global.levelRequired[global.currentLevel];
        levelExp = 0;
        global.levelExp = 0;
        alarm[0] = 30;
        
        if(h_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 1, obj_lvupEffect);
            ef.num = h_bns[global.currentLevel];
        }
        if(a_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 2, obj_lvupEffect);
            ef.num = a_bns[global.currentLevel];
        }
        if(d_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 3, obj_lvupEffect);
            ef.num = d_bns[global.currentLevel];
        }
        if(k1_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 4, obj_lvupEffect);
            ef.num = k1_bns[global.currentLevel];
        }
        if(k2_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 5, obj_lvupEffect);
            ef.num = k2_bns[global.currentLevel];
        }
        if(k3_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 6, obj_lvupEffect);
            ef.num = k3_bns[global.currentLevel];
        }
        if(k4_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 7, obj_lvupEffect);
            ef.num = k4_bns[global.currentLevel];
        }
        if(k5_bns[global.currentLevel] > 0)
        {
            ef = instance_create(132, 128 + 8 + 48 * 8, obj_lvupEffect);
            ef.num = k5_bns[global.currentLevel];
        }
        levelupBonus(a_bns[global.currentLevel], d_bns[global.currentLevel], h_bns[global.currentLevel], k1_bns[global.currentLevel], k2_bns[global.currentLevel], k3_bns[global.currentLevel], k4_bns[global.currentLevel], k5_bns[global.currentLevel]);
        


