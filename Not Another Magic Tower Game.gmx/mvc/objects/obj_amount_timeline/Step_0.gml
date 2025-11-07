if(keyboard_check_pressed(global.jumpbutton))
{
    if(step == 0)
    {
        t = alarm[0];
        alarm[0] = 1;
        alarm[1] -= t;
        alarm[2] -= t;
        alarm[3] -= t;
        obj_amount_drawer.alpha = 1;
    }
    else if(step == 1)
    {
        t = alarm[1];
        alarm[1] = 1;
        alarm[2] -= t;
        alarm[3] -= t;
        obj_amount_drawer2.alpha = 1;
    }
    else if(step == 2)
    {
        t = alarm[2];
        alarm[2] = 1;
        alarm[3] -= t;
        obj_amount_drawer3.alpha = 1;
    }
    else if(step == 3)
    {
        alarm[3] = 1;
        obj_amount_drawer4.alpha = 1;
    }
    else if(step == 4)
    {
        step = 5;
        global.totalNow = global.total;
    }
    else
    {
        obj_amount_drawer5.alarm[0] = 1;
        step = 6;
    }
}

