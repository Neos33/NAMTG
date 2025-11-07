if(global.monsters[205]) exit;
if(player.hspeed != 0 || player.vspeed != 0 && global.story[22] && cooldown)
{
    rnd = irandom_range(0,1000);
    if(rnd > 996)
    {
        instance_create(player.x, player.y, obj_randomMonster);
    }
}

