sound_fix(sndStatistic);
alpha=0;
global.amount[3]=0;
for(i = 0; i < 18; i+=1)
{
    if(i < 11 || i > 13)
    {
        global.amount[3] += 1000 * global.special[i];
    }
}

spr[0] = spr_floorTran;
spr[1] = spr_fairyLetter;
spr[2] = spr_expCoin;
spr[3] = spr_secretDetector;
spr[4] = spr_metalShoes;
spr[5] = spr_lostMemo;
spr[6] = spr_saintWand;
spr[7] = spr_magicRing;
spr[8] = spr_kuiHuaBaoDian;
spr[9] = spr_frozenBadge;
spr[10] = spr_strangeMap;
spr[11] = spr_magicCloak1;
spr[12] = spr_enegyAplifier1;
spr[13]= spr_saintSword1;
spr[14] = spr_saintShield1;

sprUnknown = spr_specialUnknown;

