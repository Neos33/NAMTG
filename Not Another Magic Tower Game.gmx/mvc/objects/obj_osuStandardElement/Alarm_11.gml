if(alpha < 1)
{
    alpha += 0.04;
    alarm[11] = 1;
    if(alpha == 1 && obj_osuController.currentInd == ind)
    {
        keyboard_lastkey = 0;
    }
    
}

