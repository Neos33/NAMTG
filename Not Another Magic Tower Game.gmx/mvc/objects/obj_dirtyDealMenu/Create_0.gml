pauseImg = sprite_create_from_surface(application_surface, 0, 0, 800, 608, false, false, 0, 0);
dealMsg = "";
player.frozen = true;
dialog = true;

ind = 0;
type = -1;

totalMonsters = 5;
monsterName[0] = "Yaranaika";
monsterName[1] = "3B6";
monsterName[2] = "Faro";
monsterName[3] = "Mr.Pica";
monsterName[4] = "Mr.Trebole";

if(!global.monsters[73])
{
    exchangeHp[0] = 150;
    mCount[0] = 1;
    mInd[0,0] = 73;
    monsterSuffix[0] = "(" + string(exchangeHp[0]) + "HP)";
    if(global.attack < 31)
    {
        msg[0] = "You must reach 31 attack before you can skip Yaranaika."
    }
    else if(global.hp <= exchangeHp[0])
    {

        msg[0] = "You don't have enough hp for the deal."
    }
    else
    {
        monster[0] = true;
    }
}
else
{
    monsterSuffix[0] = "(Dead)";
    mCleared[0] = true;
}

if(!global.monsters[202])
{
    if(global.maxFloor >= 10)
    {
        exchangeHp[1] = 188;
        mCount[1] = 3;
        mInd[1,0] = 202;
        mInd[1,1] = 203;
        mInd[1,2] = 204;
        monsterSuffix[1] = "(" + string(exchangeHp[1]) + "HP)";
        if(global.attack < 44)
        {
            msg[1] = "You must reach 44 attack before you can skip 3B6."
        }
        else if(global.hp <= exchangeHp[1])
        {
            msg[1] = "You don't have enough hp for the deal."
        }
        else
        {
            monster[1] = true;
        }
    }
    else
    {
        monsterSuffix[1] = "";
        monsterName[1] = "???";
        mLock[1] = true;
    }
}
else
{
    monsterSuffix[1] = "(Dead)";
    mCleared[1] = true;
}

if(!global.monsters[292])
{
    if(global.monsters[277])
    {
        exchangeHp[2] = 330;
        mCount[2] = 1;
        mInd[2,0] = 292;
        monsterSuffix[2] = "(" + string(exchangeHp[2]) + "HP)";
        if(global.attack < 112)
        {
            msg[2] = "You must reach 112 attack before you can skip Faro."
        }
        else if(global.hp <= exchangeHp[2])
        {
            msg[2] = "You don't have enough hp for the deal."
        }
        else
        {
            monster[2] = true;
        }
    }
    else
    {
        monsterSuffix[2] = "";
        monsterName[2] = "???";
        mLock[2] = true;
    }
}
else
{
    monsterSuffix[2] = "(Dead)";
    mCleared[2] = true;
}
        
if(!global.monsters[219])
{
    if(global.maxFloor >= 11 && global.attack > 120)
    {
        exchangeHp[3] = 500;
        mCount[3] = 1;
        mInd[3,0] = 219;
        monsterSuffix[3] = "(" + string(exchangeHp[3]) + "HP)";
        if(global.attack < 121)
        {
            msg[3] = "You must reach 121 attack before you can skip Mr.Pica."
        }
        else if(global.hp <= exchangeHp[3])
        {
            msg[3] = "You don't have enough hp for the deal."
        }
        else
        {
            monster[3] = true;
        }
    }
    else
    {
        monsterSuffix[3] = "";
        monsterName[3] = "???";
        mLock[3] = true;
    }
}
else
{
    monsterSuffix[3] = "(Dead)";
    mCleared[3] = true;
}

if(!global.monsters[239])
{
    if(global.maxFloor >= 11 && global.attack > 120)
    {
        exchangeHp[4] = 650;
        mCount[4] = 1;
        mInd[4,0] = 239;
        monsterSuffix[4] = "(" + string(exchangeHp[4]) + "HP)";
        if(global.attack < 121)
        {
            msg[4] = "You must reach 121 attack before you can skip Mr.Pica."
        }
        else if(global.hp <= exchangeHp[3])
        {
            msg[4] = "You don't have enough hp for the deal."
        }
        else
        {
            monster[4] = true;
        }
    }
    else
    {
        monsterSuffix[4] = "";
        monsterName[4] = "???";
        mLock[4] = true;
    }
}
else
{
    monsterSuffix[4] = "(Dead)";
    mCleared[4] = true;
}

