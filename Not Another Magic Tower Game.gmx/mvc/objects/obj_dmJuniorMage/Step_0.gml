time += 1;
if(time mod 3 != 0)
    exit;
size = ds_list_size(xl);
if(size == 5)
{
    ds_list_delete(xl,0);
    ds_list_delete(yl,0);
}
ds_list_add(xl, xprevious);
ds_list_add(yl, yprevious);


if(start)
{
    if(!hinit)
    {
        spd = -6;
        hinit = true;
    }
    if(hMove)
    {
        if(abs(x-targetX) > 1)
        {
            if(abs(x-targetX) > 125)
            {
                spd += 0.1;
            }
            else
            {
                spd -= 0.1;
            }
            move_towards_point(targetX,y,spd);
        }
        else
        {
            x = targetX;
            speed = 0;
            hMove = false;
            vMove = true;
            alarm[4] = 0;
            alarm[7] = 0;
        }
    }
    if(vMove)
    {
        if(abs(y-targetY) >= 10)
        {
            move_towards_point(x,targetY,10);
        }
        else
        {
            y = targetY;
            speed = 0;
            vMove = false;
            alarm[4] = 0;
            alarm[11] = 30;
        }
    }
}

