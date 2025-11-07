if(global.GalleryBossFight)
{
    usedHp = global.GalleryBossFightHp;
}
else
{
    usedHp = global.hp;
}

if(hp > usedHp)
{
    stepHp = floor((hp - usedHp)/10);
    if(stepHp < 1)
        stepHp = 1;
    hp -= stepHp;
}

