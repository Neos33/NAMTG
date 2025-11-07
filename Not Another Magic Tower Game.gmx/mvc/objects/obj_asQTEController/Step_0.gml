if(start)
{
    if(keyboard_lastkey != 0)
    {
        var currentQTE = ds_queue_dequeue(qteQueue);
        if(keyboard_lastkey == currentQTE.keycode)
        {
            currentQTE.alarm[0] = 1;
            keyboard_lastkey = 0;
            if(ds_queue_size(qteQueue) == 0)
            {
                start = false;
                alarm[10] = 1;
            }
        }
        else
        {
            currentQTE.alarm[1] = 1;
            keyboard_lastkey = 0;
            start = false;
            alarm[11] = 1;
        }
    }
}

