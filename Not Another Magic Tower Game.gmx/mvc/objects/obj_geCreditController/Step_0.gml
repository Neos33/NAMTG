if(!creditEnd)
{    
    startY -= 0.65;
    global.geStep += 1;
    if(global.geStep > 8500)
    {
        if(lastWordY > 304)
        {
            lastWordY -= 0.65;
        }
        else
        {
            lastWordY = 304;
            alarm[0] = 50;
            creditEnd = true;
        }
    }
}

