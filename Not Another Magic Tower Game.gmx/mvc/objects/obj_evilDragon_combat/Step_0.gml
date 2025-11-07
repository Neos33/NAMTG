if(cooldown > 0)
{
    cooldown -= 1;
}
time += 1;


/*switch(time)
{
    case startCorner1 - 10:
        with(obj_dragonStartBullet1)
        {
            burst = true;
            speed = 15;
            direction = point_direction(player.x,player.y,x,y);
        }
        with(obj_dragonStartController)
        {
            instance_destroy();
        }
        break;
    case startCorner1:
        shooter = instance_create(96,96,obj_dragonStartCornerShooter);
        with(shooter)
        {
            py = 304;
            event_user(0);
            ind = 4;
            image_index = 0;
        }
        break;
    case startCorner2:
        shooter = instance_create(704,96,obj_dragonStartCornerShooter);
        with(shooter)
        {
            py = 304;
            event_user(0);
            ind = 5;
            image_index = 1;
        }
        break;
    case startCorner3:
        shooter = instance_create(704,512,obj_dragonStartCornerShooter);
        with(shooter)
        {
            py = 336;
            event_user(0);
            ind = 1;
            image_index = 2;
        }
        break;
    case startCorner4:
        shooter = instance_create(96,512,obj_dragonStartCornerShooter);
        with(shooter)
        {
            py = 336;
            event_user(0);
            ind = 6;
            image_index = 3;
        }
        break;
    case startCornerShoot:
        with(obj_dragonStartCornerShooter)
        {
            alarm[3] = 1;
            start = true;
        }
        break;
    case startShootEnd:
        with(obj_dragonStartCornerShooter)
        {
            alarm[3] = 0;
        }
        with(obj_dragonStartBullet3)
        {
            speed = 20;
            direction = point_direction(player.x,player.y,x,y);
        }
        break;
    case startShootEnd + 10:
        transition_kind = 105;
        transition_steps = 30;
        room_goto(rDragonSpace1);
        break;
}

/* */
/*  */
