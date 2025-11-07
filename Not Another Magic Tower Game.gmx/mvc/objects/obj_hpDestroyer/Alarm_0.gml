if(player_is_alive())
{
    if(global.hp > 0)
    {
        global.hp -= 1;
        count += 1;
        repeat(3)
        {
            aa = instance_create(player.x, player.y, blood);
            aa.speed = random_range(10, 12);
            aa.direction = random_range(0,359);
            aa.image_angle = direction;
        }
        damageInfo = instance_create(x, y, obj_damageInfo);
        damageInfo.color = c_silver;
        damageInfo.font = fontDamageInfo1;
        damageInfo.damage = 1;
        damageInfo.level = 1;
        if(count mod 5 == 0)
        {
            audio_playsound(sndDeath);
        }
    }
    else
    {
        player.frozen = false;
        with(player)
        {
            killPlayer();
        }
    }
    
    if(global.hp > 0)
    {
        if(count < 100)
        {
            alarm[0] = 1;
        }
        else
        {
            image_alpha = 0;
            alarm[1] = 10;
        }
    }
    else
    {
        player.frozen = false;
        with(player)
        {
            killPlayer();
        }
    }
}

