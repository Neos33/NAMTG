if(phase == 1)
{
    if(!targeted)
    {
        dir = point_direction(x,y,player.x, player.y);
        direction = dir;
        image_angle = dir - 90;
        speed = 15;
        targeted = true;
    }
    if(y > 624)
    {
        targeted = false;
        if(dashCount < 5)
        {
            dashCount +=1;
            cx = x;
            x = 800 - cx;
            y = -16;
            speed += 2;
        }
        else
        {
            phase = 2;
            x = 400; 
            y = -16;
            sprite_index = spr_batBattle;
            speed = 0;
            hspeed = 0;
            vspeed = 0;
            alarm[5] = 10;
            image_angle = 0;
        }
    }
}

if(isDiverse && !isDiverseInit)
{
    global.leftbutton = right;
    global.rightbutton = left;
    instance_create(player.x,player.y - 36, obj_dizzy);
    isDiverseInit = true;
}

if(phase == 3)
{
    move_towards_point(player.x, player.y, 2.8);
}

if(phase == 4)
{
    if(point_distance(x,y,600,256) >=5)
    {
        move_towards_point(600,256,5);
    }
    else
    {
        hspeed = 0;
        vspeed = 0;
        x = 600;
        y = 256;
        phase = 5;
        alarm[3] = 20;
    }
}

if(!(player_is_alive() && player.x > 0))
{
    global.leftbutton = left;
    global.rightbutton = right;
}

