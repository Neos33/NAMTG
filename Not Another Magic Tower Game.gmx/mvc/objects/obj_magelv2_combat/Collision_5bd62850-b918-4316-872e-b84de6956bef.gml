if(instance_exists(obj_mageElementController))
{
    if(obj_mageElementController.index == 0)
    {
        isFire = true;
    }
    else if(obj_mageElementController.index == 1)
    {
        isWater = true;
    }
    else if(obj_mageElementController.index == 2)
    {
        isGold = true;
    }
    else if(obj_mageElementController.index == 3)
    {
        isDark = true;
    }
    else if(obj_mageElementController.index == 4)
    {
        isGrass = true;
    }
}
event_inherited();

