if(times == 0)
{
    alarm[10] = 1;
    alarm[11] = 40;
    if(!obj_darkSummoner_combat.crazy)
    {
        obj_darkSummoner_combat.alarm[3] = 150;
    }
    else
    {
        event_user(10);
    }
    sound_fix(snd_touhou_powerup);
    exit;
}

if(cx >= -16 && cx <= 816)
{
    repeat(1)
    {
        var rr = random_range(0,32);
        var ra = random_range(0,180);
        instance_create(cx + lengthdir_x(rr,ra), cy + lengthdir_y(rr,ra), obj_dsCRBullet);
    }
    cx += dir * spd;
    alarm[0] =1;
}
else
{
    times -= 1;
    event_user(0);
}
if(count mod 3 == 0)
    sound_fix(snd_touhou_attack3);
count += 1;

