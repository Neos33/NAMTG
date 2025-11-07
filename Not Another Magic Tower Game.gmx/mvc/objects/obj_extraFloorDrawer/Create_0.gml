//background_blend[0] = c_gray;
//background_vspeed[0] = -3;
//background_hspeed[0] = -3;
if(room != rExtraFloorBonus)
{
 instance_create(0,0,obj_floorEffect);
}
if(room != rExtraFloorBonus)
{
    instance_create(96,96,obj_floorBGStyle);
    
    instance_create(704,96,obj_floorBGStyle);
    if(room != rFaroSideTower)
    {
        if instance_exists(player)
            player.frozen = true;
        alarm[1] = 10;
    }
}
else
{
 alarm[2] = 1;
}
if(room == rExtraFloor31)
{
 alarm[3] = 1;
}



ach58 = false;

