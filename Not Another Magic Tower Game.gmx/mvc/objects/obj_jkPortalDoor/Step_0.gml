if(place_meeting(x,y,player))
{
    if(image_index < 8)
    {
        index += 0.5;
        image_index = floor(index);
    }
    if(keyboard_check_pressed(global.upbutton))
    {
        if(!transport)
        {
            transport = true;
            player.frozen = true;
        }
    }
    if(string(obj_TvController.stageIndex) != string(ind))
    {
        if(ind > 0)
        {
            obj_TvController.stageIndex = ind;
            obj_TvController.title = "Stage " + string(ind);
            obj_TvController.star3 = star3;
            obj_TvController.star2 = star2;
            obj_TvController.star1 = star1;
            obj_TvController.levelDiff1 = diff1;
            obj_TvController.levelDiff2 = diff2;
            obj_TvController.levelDiff3 = diff3;
            obj_TvController.alpha = 0;
            obj_TvController.alarm[0] = 1;
        }
        else
        {
            obj_TvController.stageIndex = ind;
            obj_TvController.title = "Stage Bonus";
            obj_TvController.star3 = 0;
            obj_TvController.star2 = 0;
            obj_TvController.star1 = 0;
            obj_TvController.levelDiff1 = 0;
            obj_TvController.levelDiff2 = 0;
            obj_TvController.levelDiff3 = 0;
            obj_TvController.alpha = 0;
            obj_TvController.alarm[0] = 1;
        }
    }
}
else
{
    if(image_index > 0)
    {
        index -= 0.5;
        image_index = floor(index);
    }
    else
    {
        index = 0;
    }
    if(string(obj_TvController.stageIndex) == string(ind))
    {
        obj_TvController.stageIndex = -1;
        obj_TvController.title = "???";
        obj_TvController.alpha = 0;
        obj_TvController.alarm[0] = 1;
    }
}
ang -= 3;

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
        global.JKBackX = player.x;
        global.JKBackY = player.y - 5;
        with(player)
        {
         instance_destroy();
        }
        //transition_kind = 21;
        //transition_steps = 80;
        if(ind > 0)
        {
         if(ind < 10)
         {
            //execute_string("room_goto(ExtraJK0" + string(ind) +")");
            room_goto(asset_get_index("ExtraJK0" + string(ind)));
         }
         else
         {
            //execute_string("room_goto(ExtraJK" + string(ind) +")");
            room_goto(asset_get_index("ExtraJK" + string(ind)));
         }
        }
        else
        {
            room_goto(ExtraJKBonus);
        }
    }
}

