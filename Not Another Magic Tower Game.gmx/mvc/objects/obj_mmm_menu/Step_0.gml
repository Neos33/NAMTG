if(step < 2)
  exit;
if(mouse_x >= (x - width / 2 * 32) && mouse_x < (x + width / 2 * 32) &&
   mouse_y >= (y - height / 2 * 32) && mouse_y < (y + height / 2 * 32))
{
    if(currentMeter >= 250)
    {
       if(mouse_y < y + 12)
       {
            selectedIndex = 0;
       }
       else if(mouse_y > y + 100)
       {
            selectedIndex = 2;
       }
       else
       {
            selectedIndex = 1;
       }
    }
    else
    {
       if(mouse_y < y + 12)
       {
            selectedIndex = 0;
       }
       else if(mouse_y > y + 100)
       {
            selectedIndex = 2;
       }
    }
}

if(mouse_check_button_pressed(mb_left))
{
    if(mouse_x > x - 208 && mouse_x < x + 208 && mouse_y > y - 208 && mouse_y < y + 208)
    {
        if(selectedIndex == 0)
        {
            with(obj_mmm_gameController)
            {
                event_user(0);
            }
            with(obj_mmm_soundControl)
            {
                event_user(0);
            }
            with(obj_mmm_monster_prototype)
            {
                instance_destroy();
            }
            with(obj_mmm_barrier_prototype)
            {
                instance_destroy();
            }
            with(obj_mmm_pathPoint)
            {
                instance_destroy();
            }
            audio_playsound(snd_touhou_1UP);
            global.mmmTotalTries += 1;
            instance_create(400,512,obj_mmm_player);
            instance_destroy();
        }
        else if(selectedIndex == 1)
        {
            if(currentMeter >= 1200)
            {
                instance_create(32 + 17, 544 + 23, player);
            }
            else if(currentMeter >= 1000)
            {
                instance_create(32 + 17, 480 + 23, player);
            }
            else if(currentMeter >= 750)
            {
                instance_create(32 + 17, 384 + 23, player);
            }
            else if(currentMeter >= 500)
            {
                instance_create(32 + 17, 240 + 23, player);
            }
            else if(currentMeter >= 250)
            {
                instance_create(32 + 17, 96 + 23, player);
            }
            //transition_kind = 21;
            //transition_steps = 80;
            room_goto(rMMMBonus);
        }
        else if(selectedIndex == 2)
        {
            instance_create(256 + 17, 96 + 23, player);
            //transition_steps = 50;
            //transition_kind = 21;
            room_goto(r10F);
        }
    }
}

