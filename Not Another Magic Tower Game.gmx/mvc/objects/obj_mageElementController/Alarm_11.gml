if(index == 1)
{
    waterShoot = false;
}
else if(index == 2)
{
    glodShoot = false;
    with(obj_goldBounceMirror)
    {
        alarm[1] = 1;
    }
}
else if(index == 3)
{
    with(obj_mageDarkBullet)
    {
        alarm[4] = 1;
    }
}
else if(index == 4)
{
    with(obj_mageLeafCutCreator)
    {
        instance_destroy();
    }
}

obj_magelv2_combat.alarm[3] = 50;
obj_magelv2_combat.alarm[4] = 150;
obj_magelv2_combat.eAngle = -90;
obj_magelv2_combat.selectedIndex = -1;
obj_magelv2_combat.pIndex = -1;
instance_destroy();

