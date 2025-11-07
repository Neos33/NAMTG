if(currentIndex < totalAmmount)
{
    if(currentAmmount < tdAmmount[currentIndex])
    {
        m = instance_create(startX, startY, tdMonster[currentIndex]);
        m.path = obj_monsterBattlePrototype.tdPath;
        m.spd = tdSpd[currentIndex];
        m.atk = tdMAtk[currentIndex];
        m.def = tdMDef[currentIndex];
        m.hp = tdMHP[currentIndex];
        m.fullHp = tdMHP[currentIndex];
        m.ind = currentAmmount;
        m.mInd = currentIndex;
        with(m)
        {
            event_user(10);
        }
        currentAmmount += 1;
        alarm[0] = tdInterval[currentIndex];
    }
    else
    {
        if(special)
        {
            alarm[1] = 300;//tdInterval[currentIndex];
        }
        else
        {
            if(currentIndex == 0)
            {
                obj_tdSpecialPlatform.alarm[0] = 1;
                with(obj_tdSwitch)
                {
                    alarm[0] = 1;
                }
            }
            alarm[11] = 1;
            //alarm[1] = tdBreak[currentIndex];
        }
    }
}
else
{
    isBoss = true;
    instance_create(400,304,obj_dlDanger);
    //obj_monsterBattlePrototype.alarm[3] = 1;
}

