if(lock)
{
    if(global.currentBubbleStage >= ind && obj_bubbleStageController.totalStars >= obj_bubbleStageController.stageLimit[ind])
    {
        lock = false;
        alarm[2] = 100;
        lvLock.alarm[0] = 1;
    }
}
angle += 3;
y = py + sin(degtorad(angle));

if(lvLock)
{
    lvLock.y = y;
}

if(!pending)
{
    var m_dis = point_distance(mouse_x,mouse_y, x,y);
    if(m_dis <= 50)
    {
        if(played==0)
        {
            
            played=1;
            sound_fix(sndSelect);
        }
            
        image_xscale = 1.2;
        image_yscale = 1.2;
        selected = true;
        if(mouse_check_button_released(mb_left))
        {
            global.stageIndex = ind;
            //transition_steps = 80;
            //transition_kind = 21;
            room_goto(roomTo);
            sound_fix(sndDecide);
        }
    }
    else
    {
        played=0;
        image_xscale = 1;
        image_yscale = 1;
        selected = false;
    }
    
}

