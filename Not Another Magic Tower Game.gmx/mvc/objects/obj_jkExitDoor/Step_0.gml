if(place_meeting(x,y,player))
{
    if((room == ExtraJKBonus || obj_stepRecord.start) && keyboard_check_pressed(global.upbutton))
    {
        if(!transport)
        {
            transport = true;
            obj_stepRecord.start = false;
            player.frozen = true;
        }
    }
}

if(transport)
{
    if(abs(player.x - x) > 1)
    {
         if(player.x > x)
         {
            player.hspeed = -1;
         }
         else
         {
          player.hspeed = 1;
         }
    }
    else
    {
     player.hspeed = 0;
     player.x = x;
     go = true;
    }
}

if(go)
{
    player.sprite_index = sprPlayerBack;
    if(player.image_alpha > 0)
    {
        player.image_alpha -= 0.02;
        player.image_xscale -= 0.01;
        player.image_yscale -= 0.01;
    }
    else
    {
        with(player)
        {
            instance_destroy();
        }
        if(ind >= 0)
        {
            
            with(obj_stepRecord)
            {
                if(global.ExtraJkBest[ind] == 0 || global.ExtraJkBest[ind] > (personIndex + 1))
                {
                    global.ExtraJkBest[ind] = personIndex + 1;
                }
                if(personIndex < star3)
                {
                    star = 3;
                }
                else if(personIndex < star2)
                {
                    star = 2;
                }
                else if(personIndex < star1)
                {
                    star = 1;
                }
                else
                {
                    star = 0;
                }
                if(star > global.ExtraJkStar[ind])
                {
                    global.ExtraJkStar[ind] = star;
                }
            }
        }
        //transition_kind = 21;
        //transition_steps = 80;
        instance_create(warpX, warpY, player);
        if(obj_stepRecord.ind < 9)
        {
            global.ExtraJKPortalPressed[obj_stepRecord.ind] = true;
        }
        totalStar = 0;
        allClear = true;
        for(var i = 0; i < 10; i += 1)
        {
            if(global.ExtraJkBest[i] == 0)
            {
                allClear = false;
            }
            else
            {
                totalStar += global.ExtraJkStar[i];
            }
        }
        if(allClear && !global.achievements[54])
        {
            var ch = instance_create(0,608,obj_achievements);
            ch.index = 54;
            global.achievements[54] = 1;
        }
        if(totalStar == 30 && !global.achievements[55])
        {
            if(instance_exists(obj_achievements))
            {
                var ch = instance_create(0,680,obj_achievements);
            }
            else
            {
                var ch = instance_create(0,608,obj_achievements);
            }
            ch.index = 55;
            global.achievements[55] = 1;
        }
        room_goto(ExtraJKPortal);
    }
}

