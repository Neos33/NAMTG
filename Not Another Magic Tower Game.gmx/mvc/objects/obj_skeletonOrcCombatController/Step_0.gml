global.combatTime += 1;
/*if(global.special[7])
{
    if(instance_exists(obj_monsterBattlePrototype))
    {
        if(obj_monsterBattlePrototype.x > view_xview[0] && obj_monsterBattlePrototype.x < view_xview[0] + view_wview[0] && obj_monsterBattlePrototype.y > view_yview[0] && obj_monsterBattlePrototype.y < view_yview[0] + view_hview[0])
        {
            global.isTrack = true;
            with(obj_monsterBattlePrototype)
            {
                global.trackX = x + (sprite_width / 2 - sprite_xoffset) * image_xscale;
                global.trackY = y + (sprite_height / 2 - sprite_yoffset) * image_yscale;
            }
        }
    }
}
else
{
    global.isTrack = false;
}

/* */
/*  */
