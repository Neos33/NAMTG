if(alpha == 1)
{
    if((radius + offset * spd) <= (radius / 2))
    {
        instance_destroy();
    }
    offset -= 1;
}

if(obj_osuController.currentInd == ind && alpha == 1)
{
    if(keyboard_lastkey == global.jumpbutton || keyboard_lastkey == global.shotbutton)
    {
        if(abs(offset) <= 20)
        {
            correct = true;
            acc = 100;
            if(abs(offset) <= 10)
            {
                acc = 300;
            }
        }
        keyboard_lastkey = 0;
        instance_destroy();
    }
}

