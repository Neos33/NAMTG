//if instance_exists(player)

    if(player.x < 400)
    {
        var p = instance_create(920, 480, obj_hugeBone);
        p.hspeed = -1;
        p.dx = - 120;
    }
    else
    {
        var p = instance_create(-120, 480, obj_hugeBone);
        p.hspeed = 1;
        p.dx = 920;
    }

isShake = true;

