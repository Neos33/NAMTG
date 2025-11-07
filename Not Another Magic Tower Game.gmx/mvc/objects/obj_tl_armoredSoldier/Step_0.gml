if(ds_list_size(asShadowX) == 7)
{
    ds_list_delete(asShadowX, 0);
    ds_list_delete(asShadowY, 0);
}
ds_list_add(asShadowX, xprevious);
ds_list_add(asShadowY, yprevious);

/*if(dash)
{
    if(dashCountDown > 0)
    {
        dashCountDown -= 1;
    }
    else
    {
        if(!dashStart)
        {
            if(ds_queue_size(dashLine) > 0)
            {
                cLine = ds_queue_dequeue(dashLine);
                x = cLine.x;
                y = cLine.y;
                direction = cLine.direction;
                image_angle = direction - 90;
                speed = 35;
                cLine.finished = true;
                dashStart = true;
            }
        }
        else
        {
            if(x > 850 || x < -50 || y > 650 || y < -50)
            {
                dashStart = false;
                dashCountDown = dashGap2;
                dashGap2 -= 2;
            }
        }
    }
}

/* */
/*  */
