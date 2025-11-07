if(image_alpha > 0.2)
{
    image_alpha -= 0.02;
    alarm[0] = 1;
}
else
{
    with obj_monsterBattlePrototype
    {
        alarm[3] = 50;
    }
    instance_destroy();
}

