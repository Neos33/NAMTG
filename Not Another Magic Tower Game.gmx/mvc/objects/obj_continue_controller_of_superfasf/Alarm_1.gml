/*
if(obj_superFasf_combat.y < 544)
{
    with(obj_superFasf_combat)
    {
        aaa=instance_create(x,y,obj_supfasfbullet);
        aaa.twist=4; //choose(2,3)
        aaa.alarm[3] = 100;
        aaa.alarm[4] = 1;
        //aaa.speed=irandom(6)+4;
        //aaa.direction=random_range(0,359);
        //aaa.sprite_index=spr_supfasfbullet2;
    }
}
alarm[1]=5;


/* */
if instance_exists(obj_superFasf_combat)
{
    if(obj_superFasf_combat.y < 304)
    {
        with(obj_superFasf_combat)
        {
            aaa=instance_create(x,y,obj_supfasfbullet);
            aaa.twist=choose(2,3)
            aaa.speed=irandom(6)+4;
            aaa.direction=random_range(0,359);
            aaa.sprite_index=spr_supfasfbullet2;
        }
    }
}
alarm[1]=50;


/* */
/*  */
