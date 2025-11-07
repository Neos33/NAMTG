if(image_alpha > 0)
{
    image_alpha -= 0.05;
    obj_bsEnergyBall.image_alpha -= 0.05;
    alarm[4] = 1;
}
else
{
    with(obj_bsEnergyBall)
    {
        instance_destroy();
    }
    obj_burningSlime_combat.status = 3;
    obj_burningSlime_combat.statusCountDown = 50;
    instance_destroy();
}

